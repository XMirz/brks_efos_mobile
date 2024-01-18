// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'dio_provider.g.dart';

// @riverpod
// Dio dioProvider(
//   DioRef ref, {
//   String? baseUrl,
//   String? bearerToken,
//   String? contentType,
//   ResponseType? responseType,
// }) {
//   final baseOption = BaseOptions(
//     baseUrl: baseUrl ?? 'http://172.100.201.246:8041',
//     contentType: contentType ?? Headers.jsonContentType,
//     responseType: responseType ?? ResponseType.bytes,
//     connectTimeout: const Duration(seconds: 60),
//     receiveTimeout: const Duration(seconds: 60),
//   );

//   if (bearerToken)
//     return Dio(
//       baseOption,
//     );
// }

// // final dioProvider = Provider.family<Dio, String>((ref, bearerToken) {
// //     final _baseOptions = BaseOptions(
// //         contentType: '',
// //         responseType: ResponseType.json,

// //     )
// //     _
// //   return Dio(

// //   );
// // });
