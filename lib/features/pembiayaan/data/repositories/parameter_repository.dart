import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/user_login_dto.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ParameterRepository {
  final DioClient _dioClient = GetIt.I.get();

  Future<Either<Failure, LoanParameter>> fetchInitialParameter() async {
    final response = await _dioClient.get<Map<String, dynamic>>('/mobile/parameter/inquiryall');
    return response.fold(
      left,
      (r) {
        try {
          return right(LoanParameter.fromJson(r));
        } catch (e) {
          debugPrint(e.toString());
          return left(
            Failure.unprocessableEntity(
              message: l10n.somethingWrong,
              code: '05',
            ),
          );
        }
      },
    );
  }

  Future<List<Parameter>> fetchProduk(
    String kategoriId,
  ) async {
    final data = ParameterDto(id: kategoriId);
    final response = await _dioClient.post<List<dynamic>>(
      '/mobile/parameter/produk',
      data: data.toJson(),
    );
    return response.fold(
      (l) => throw l,
      (r) => r
          .map(
            (e) => Parameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Future<List<Parameter>> fetchJenisPengajuan(
    String id,
  ) async {
    final data = ParameterDto(id: id);
    final response = await _dioClient.post<List<dynamic>>(
      '/mobile/parameter/template',
      data: data.toJson(),
    );
    return response.fold(
      (l) => throw l,
      (r) => r
          .map(
            (e) => Parameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Future<List<Parameter>> fetchSubProduk(
    String idProduk,
    String idJenisPengajuan,
  ) async {
    final data = {
      'id_produk': idProduk,
      'id_template_dokumen': idJenisPengajuan,
    };
    final response = await _dioClient.post<List<dynamic>>(
      '/mobile/parameter/subproduk',
      data: data,
    );
    return response.fold(
      (l) => throw l,
      (r) => r
          .map(
            (e) => Parameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Future<List<Parameter>> fetchPlan(
    String idSubProduk,
    String idJenisPengajuan,
  ) async {
    final data = {
      'id_subproduk': idSubProduk,
      'id_template_dokumen': idJenisPengajuan,
    };
    final response = await _dioClient.post<List<dynamic>>(
      '/mobile/parameter/plan',
      data: data,
    );
    return response.fold(
      (l) => throw l,
      (r) => r
          .map(
            (e) => Parameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Future<List<Parameter>> fetchKabupaten(String idProvinsi) async {
    final data = ParameterDto(id: idProvinsi);
    final response = await _dioClient.post<List<dynamic>>(
      '/mobile/parameter/dati',
      data: data.toJson(),
    );
    return response.fold(
      (l) => throw l,
      (r) => r
          .map(
            (e) => Parameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Future<List<Parameter>> fetchKecamatan(String idKabupaten) async {
    final data = ParameterDto(id: idKabupaten);
    final response = await _dioClient.post<List<dynamic>>(
      '/mobile/parameter/kec',
      data: data.toJson(),
    );
    return response.fold(
      (l) => throw l,
      (r) => r
          .map(
            (e) => Parameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Future<List<Parameter>> fetchKelurahan(String idKecamatan) async {
    final data = ParameterDto(id: idKecamatan);
    final response = await _dioClient.post<List<dynamic>>(
      '/mobile/parameter/kel',
      data: data.toJson(),
    );
    return response.fold(
      (l) => throw l,
      (r) => r
          .map(
            (e) => Parameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }
}
