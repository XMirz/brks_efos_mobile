import 'package:dartz/dartz.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OurNotifier<T, R> extends StateNotifier<AsyncValue<T>> {
  OurNotifier({
    required this.fetcher,
    required this.request,
  }) : super(const AsyncValue.loading()) {
    fetchRequest();
  }

  final R request;
  final Future<Either<Failure, T>> Function(R) fetcher;

  Future<void> fetchRequest() async {
    state = const AsyncValue.loading();
    final result = await fetcher(request);
    await result.fold(
      (l) {
        state = AsyncValue.error(l, StackTrace.fromString(l.message));
      },
      (r) async {
        state = AsyncValue.data(r);
      },
    );
  }
}
