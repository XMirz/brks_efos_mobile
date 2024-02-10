import 'dart:async';
import 'dart:developer';

import 'package:efosm/core/di/injector.dart';
import 'package:flutter/widgets.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Initialize dependency
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.registerInitializationDependency();

  // Add cross-flavor configuration here
  runApp(await builder());
}
