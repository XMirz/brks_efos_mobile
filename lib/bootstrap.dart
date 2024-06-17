import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:efosm/core/di/injector.dart';
import 'package:flutter/widgets.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Initialize dependency
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.registerInitializationDependency();

  // Disable SSL Pinning For Pentest

  // Add cross-flavor configuration here
  runApp(await builder());
}
