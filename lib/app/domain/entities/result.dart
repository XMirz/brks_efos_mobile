// sealed class Result<S, E extends Exception> {
//   const Result();
// }

// final class Success<S, E > {
//   const Success(this.value, this.pesan, this.kode);
//   final String? pesan;
//   final String? kode;
//   final S value;
// }

// final class Failure<S, E extends Exception> extends Result<S, E> {
//   const Failure(this.exception);
//   final String? pesan;
//   final String? kode;
//   final E exception;
// }

final class Result<T> {
  const Result(this.data, this.message, this.code);
  final String? message;
  final String? code;
  final T data;
}
