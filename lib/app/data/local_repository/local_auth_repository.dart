import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:efosm/app/domain/entities/session_entity.dart';
import 'package:efosm/app/domain/hive_entities/user_hive.dart';
import 'package:efosm/core/constants/strings.dart';
import 'package:efosm/core/data/local/hive_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

class LocalAuthRepository {
  final HiveClient hiveClient = GetIt.I.get();
  final boxName = AppString.hiveAuthBox;
  static late List<int> encryptionKey;

  Future<List<int>> getEncryptionKey() async {
    const secureStorage = FlutterSecureStorage();
    final containsEncryptionKey = await secureStorage.containsKey(key: AppString.encKey);
    if (!containsEncryptionKey) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: AppString.encKey,
        value: base64UrlEncode(key),
      );
      encryptionKey = key;
      return key;
    } else {
      final rawKey = await secureStorage.read(key: AppString.encKey);
      final key = base64Url.decode(rawKey!);
      encryptionKey = key;
      return key;
    }
  }

  Future<void> saveAuth(SessionEntity authUser) async {
    debugPrint(authUser.toString());
    final hiveAuth = UserHiveEntity(
        nik: authUser.nik,
        username: authUser.username,
        name: authUser.name,
        idRole: authUser.idRole,
        role: authUser.role,
        idCabang: authUser.idCabang,
        cabang: authUser.cabang,
        levelApproveCabang: authUser.levelApproveCabang,
        token: authUser.token,
        limitKonsumtifCabang: authUser.limitKonsumtifCabang,
        limitProduktifCabang: authUser.limitProduktifCabang,
        authorities: authUser.authorities);

    await hiveClient.createOrUpdate(boxName, AppString.hiveUserKey, encryptionKey, hiveAuth);
  }

  Future<SessionEntity?> retrieveAuth() async {
    final hiveAuth = await hiveClient.read<UserHiveEntity>(boxName, AppString.hiveUserKey, encryptionKey);
    if (hiveAuth == null) return null;
    final auth = SessionEntity(
      nik: hiveAuth.nik!,
      username: hiveAuth.username!,
      name: hiveAuth.name!,
      idRole: hiveAuth.idRole!,
      role: hiveAuth.role!,
      idCabang: hiveAuth.idCabang!,
      cabang: hiveAuth.cabang!,
      levelApproveCabang: hiveAuth.levelApproveCabang!,
      token: hiveAuth.token!,
      limitKonsumtifCabang: hiveAuth.limitKonsumtifCabang!,
      limitProduktifCabang: hiveAuth.limitProduktifCabang!,
      authorities: hiveAuth.authorities ?? [],
      permissions: hiveAuth.permissions ?? [],
    );
    return auth;
  }

  Future<void> destroyAuth() async {
    await hiveClient.delete(boxName, AppString.hiveUserKey, encryptionKey);
  }

  Future<void> saveAkwoakowako(String akwoakowako) async {
    final bytes = utf8.encode(akwoakowako);
    final hashedAkwoakowako = sha256.convert(bytes);
    await hiveClient.createOrUpdate(
      boxName,
      AppString.akwoakowako,
      encryptionKey,
      hashedAkwoakowako.toString(),
    );
  }

  Future<String?> retrieveAkwoakowako() async {
    return hiveClient.read<String>(boxName, AppString.akwoakowako, encryptionKey);
  }

  Future<void> destroyAkwoakowako(String akwoakowako) async {
    await hiveClient.delete(boxName, AppString.akwoakowako, encryptionKey);
  }

  Future<void> savedeviceId(String deviceId) async {
    await hiveClient.createOrUpdate(
      boxName,
      AppString.deviceId,
      encryptionKey,
      deviceId,
    );
  }

  Future<void> retrievedeviceId(String deviceId) async {
    await hiveClient.delete(boxName, AppString.deviceId, encryptionKey);
  }

  Future<void> destroydeviceId(String deviceId) async {
    await hiveClient.delete(boxName, AppString.deviceId, encryptionKey);
  }
}
