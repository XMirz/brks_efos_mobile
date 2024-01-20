import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';

class DioClient {
  DioClient() {
    final baseOption = BaseOptions(
      baseUrl: AppString.baseUrl,
      contentType: Headers.jsonContentType,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    );
    dio = Dio(baseOption);
    dio.interceptors.add(LoggingInterceptor());
  }
  DioClient._authenticated(String bearerToken) {
    final baseOption = BaseOptions(
      baseUrl: AppString.baseUrl,
      contentType: Headers.jsonContentType,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {'Authorization': 'Bearer $bearerToken'},
    );
    dio = Dio(baseOption);
    dio.interceptors.add(LoggingInterceptor());
  }

  factory DioClient.authenticated(String bearerToken) {
    return DioClient._authenticated(bearerToken);
  }

  late Dio dio;

  Future<Either<Failure, Map<String, dynamic>>> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    RequestType? requestType,
  }) async {
    final requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    try {
      final response = await dio.post<Map<String, dynamic>>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
      );
      return right(response.data?['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      debugPrint(e.toString());
      if (e.response?.statusCode == 401) {
        return left(
          Failure.authentication(message: l10n.failureAuth, code: '04'),
        );
      }
      if (e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.badCertificate ||
          e.type == DioExceptionType.badResponse) {
        return left(Failure.network(message: l10n.failureServer, code: '04'));
      }
      if (e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        return left(Failure.network(message: l10n.failureNetwork, code: '04'));
      }
      rethrow;
    } catch (e) {
      debugPrint(e.toString());
      return left(
        Failure.unknown(
          message: l10n.somethingWrong,
          code: '05',
        ),
      );
    }
  }

  Future<Either<Failure, Map<String, dynamic>>> get(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    final requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    try {
      final response = await dio.get<Map<String, dynamic>>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
      );
      return right(response.data?['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      debugPrint(e.toString());
      if (e.response?.statusCode == 401) {
        return left(
          Failure.authentication(message: l10n.failureAuth, code: '04'),
        );
      }
      if (e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.badCertificate ||
          e.type == DioExceptionType.badResponse) {
        return left(Failure.network(message: l10n.failureServer, code: '04'));
      }
      if (e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        return left(Failure.network(message: l10n.failureNetwork, code: '04'));
      }
      rethrow;
    } catch (e) {
      debugPrint(e.toString());
      return left(
        Failure.unknown(
          message: l10n.somethingWrong,
          code: '05',
        ),
      );
    }
  }
}

enum RequestType {
  // ignore: constant_identifier_names
  GET,
  POST
}

class LoggingInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    debugPrint('\n\n');
    debugPrint('<--- RESPONSE --->');
    debugPrint('Status : ${response.statusCode}');
    printWrapped('Response : ${response.data}');
    debugPrint('<--- RESPONSE --->');
    debugPrint('\n\n');
  }

  @override
  void onRequest(RequestOptions request, RequestInterceptorHandler handler) {
    super.onRequest(request, handler);
    debugPrint('\n\n');
    debugPrint('<--- REQUEST --->');
    debugPrint('Path   : ${request.baseUrl}${request.path}');
    debugPrint('Headers: ${request.headers}');
    printWrapped('Request: ${request.data}');
    debugPrint('<--- REQUEST --->');
    debugPrint('\n\n');
  }

  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}');
    pattern
        .allMatches(text)
        .forEach((RegExpMatch match) => debugPrint(match.group(0)));
  }
}
