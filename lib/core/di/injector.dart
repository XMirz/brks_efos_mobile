import 'package:efosm/core/data/network/dio_client.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static void registerInitializationDependency() {
    GetIt.I.registerSingleton<DioClient>(
      DioClient(),
      // instanceName: '_dio',
    );
  }

  static void registerAuthenticatedClient(String bearerToken) {
    GetIt.I.unregister<DioClient>();
    GetIt.I.registerFactory<DioClient>(
      () => DioClient.authenticated(bearerToken),
      // instanceName: 'dio',
    );
  }
}
