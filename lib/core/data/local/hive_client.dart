import 'dart:async';

import 'package:hive/hive.dart';

class HiveClient {
  Future<void> createOrUpdate<T>(
    String boxName,
    String key,
    List<int> encryptionKey,
    T data,
  ) async {
    final box = await Hive.openBox<T>(
      boxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
    await box.put(key, data);
    await box.close();
  }

  Future<T?> read<T>(
    String boxName,
    String key,
    List<int> encryptionKey,
  ) async {
    final box = await Hive.openBox<T>(
      boxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
    final data = box.get(key);
    await box.close();
    return data;
  }

  Future<void> delete(
    String boxName,
    String key,
    List<int> encryptionKey,
  ) async {
    final box = await Hive.openBox<dynamic>(
      boxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
    await box.delete(key);
    await box.close();
  }
}
