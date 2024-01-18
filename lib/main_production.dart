import 'package:efosm/app/app.dart';
import 'package:efosm/bootstrap.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  bootstrap(() => const ProviderScope(child: App()));
}
