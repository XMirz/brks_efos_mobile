import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardIndexProvider = StateProvider<int>((ref) => 0);

final showLoginFormProvider = StateProvider.autoDispose<bool>((ref) => false);

final formHeightProvider =
    StateProvider.autoDispose.family<double, double>((ref, screenHeight) {
  if (ref.watch(showLoginFormProvider)) {
    return screenHeight * 0.6;
  }
  return screenHeight * 0.2;
});
