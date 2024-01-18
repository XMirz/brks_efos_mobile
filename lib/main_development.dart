import 'package:efosm/app/app.dart';
import 'package:efosm/bootstrap.dart';
import 'package:efosm/core/di/di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  Injector.registerInitializationDependency();
  bootstrap(() => const ProviderScope(child: App()));
}
