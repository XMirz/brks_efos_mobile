class Failure implements Exception {
  const Failure(this.message, this.code);
  const factory Failure.server({
    required String message,
    required String code,
  }) = ServerFailure;
  const factory Failure.cache({required String message, required String code}) =
      CacheFailure;
  const factory Failure.network({
    required String message,
    required String code,
  }) = NetworkFailure;
  const factory Failure.authentication({
    required String message,
    required String code,
  }) = AuthenticationFailure;
  const factory Failure.permission({
    required String message,
    required String code,
  }) = PermissionFailure;
  const factory Failure.validation({
    required String message,
    required String code,
  }) = ValidationFailure;
  const factory Failure.notFound({
    required String message,
    required String code,
  }) = NotFoundFailure;
  const factory Failure.unprocessableEntity({
    required String message,
    required String code,
  }) = UnprocessableEntityFailure;

  final String message;
  final String code;

  @override
  String toString() => 'Failure: $message';
}

class ServerFailure extends Failure {
  const ServerFailure({required String message, required String code})
      : super(message, code);
}

class CacheFailure extends Failure {
  const CacheFailure({required String message, required String code})
      : super(message, code);
}

class NetworkFailure extends Failure {
  const NetworkFailure({required String message, required String code})
      : super(message, code);
}

class AuthenticationFailure extends Failure {
  const AuthenticationFailure({required String message, required String code})
      : super(message, code);
}

class PermissionFailure extends Failure {
  const PermissionFailure({required String message, required String code})
      : super(message, code);
}

class ValidationFailure extends Failure {
  const ValidationFailure({required String message, required String code})
      : super(message, code);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({required String message, required String code})
      : super(message, code);
}

class UnprocessableEntityFailure extends Failure {
  const UnprocessableEntityFailure({
    required String message,
    required String code,
  }) : super(message, code);
}
