import 'dart:io';

import 'package:efosm/app/domain/hive_entities/user_hive.dart';
import 'package:efosm/core/data/local/hive_client.dart';
import 'package:efosm/core/data/network/dio_client.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Injector {
  static Future<void> registerInitializationDependency() async {
    // Unauthenticated Dio
    GetIt.I.registerSingleton<DioClient>(
      DioClient(),
    );
    // Init Hive
    final directory = await getApplicationDocumentsDirectory();
    Hive
      ..init(directory.path)
      ..registerAdapter(UserHiveEntityAdapter());
    // Register Hive
    GetIt.I.registerSingleton<HiveClient>(HiveClient());
  }

  static void registerAuthenticatedClient(String bearerToken) {
    GetIt.I.unregister<DioClient>();
    GetIt.I.registerFactory<DioClient>(
      () => DioClient.authenticated(bearerToken),
    );
  }

  static void unregisterAuthenticatedClient(String bearerToken) {
    GetIt.I.unregister<DioClient>();
    GetIt.I.registerSingleton<DioClient>(
      DioClient(),
    );
  }
}
