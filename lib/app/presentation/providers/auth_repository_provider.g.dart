// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authRepositoryHash() => r'827d48289fca9ff7300a551270d89129c3b7693f';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider = AutoDisposeProvider<AuthRepository>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = AutoDisposeProviderRef<AuthRepository>;
String _$createAuthenticationHash() =>
    r'50c0306e11263cd9a863a85e064c36292ac9aca7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [createAuthentication].
@ProviderFor(createAuthentication)
const createAuthenticationProvider = CreateAuthenticationFamily();

/// See also [createAuthentication].
class CreateAuthenticationFamily
    extends Family<AsyncValue<Either<Failure, UserEntity>>> {
  /// See also [createAuthentication].
  const CreateAuthenticationFamily();

  /// See also [createAuthentication].
  CreateAuthenticationProvider call(
    UserAuthenticationDto loginDto,
  ) {
    return CreateAuthenticationProvider(
      loginDto,
    );
  }

  @override
  CreateAuthenticationProvider getProviderOverride(
    covariant CreateAuthenticationProvider provider,
  ) {
    return call(
      provider.loginDto,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createAuthenticationProvider';
}

/// See also [createAuthentication].
class CreateAuthenticationProvider
    extends AutoDisposeFutureProvider<Either<Failure, UserEntity>> {
  /// See also [createAuthentication].
  CreateAuthenticationProvider(
    UserAuthenticationDto loginDto,
  ) : this._internal(
          (ref) => createAuthentication(
            ref as CreateAuthenticationRef,
            loginDto,
          ),
          from: createAuthenticationProvider,
          name: r'createAuthenticationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createAuthenticationHash,
          dependencies: CreateAuthenticationFamily._dependencies,
          allTransitiveDependencies:
              CreateAuthenticationFamily._allTransitiveDependencies,
          loginDto: loginDto,
        );

  CreateAuthenticationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.loginDto,
  }) : super.internal();

  final UserAuthenticationDto loginDto;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, UserEntity>> Function(
            CreateAuthenticationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateAuthenticationProvider._internal(
        (ref) => create(ref as CreateAuthenticationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        loginDto: loginDto,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, UserEntity>>
      createElement() {
    return _CreateAuthenticationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateAuthenticationProvider && other.loginDto == loginDto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, loginDto.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateAuthenticationRef
    on AutoDisposeFutureProviderRef<Either<Failure, UserEntity>> {
  /// The parameter `loginDto` of this provider.
  UserAuthenticationDto get loginDto;
}

class _CreateAuthenticationProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, UserEntity>>
    with CreateAuthenticationRef {
  _CreateAuthenticationProviderElement(super.provider);

  @override
  UserAuthenticationDto get loginDto =>
      (origin as CreateAuthenticationProvider).loginDto;
}

String _$deleteAuthenticationHash() =>
    r'b83829e6eefca709131b90bd5039b7603da90d6c';

/// See also [deleteAuthentication].
@ProviderFor(deleteAuthentication)
const deleteAuthenticationProvider = DeleteAuthenticationFamily();

/// See also [deleteAuthentication].
class DeleteAuthenticationFamily
    extends Family<AsyncValue<Either<Failure, bool>>> {
  /// See also [deleteAuthentication].
  const DeleteAuthenticationFamily();

  /// See also [deleteAuthentication].
  DeleteAuthenticationProvider call(
    UserAuthenticationDto loginDto,
  ) {
    return DeleteAuthenticationProvider(
      loginDto,
    );
  }

  @override
  DeleteAuthenticationProvider getProviderOverride(
    covariant DeleteAuthenticationProvider provider,
  ) {
    return call(
      provider.loginDto,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteAuthenticationProvider';
}

/// See also [deleteAuthentication].
class DeleteAuthenticationProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [deleteAuthentication].
  DeleteAuthenticationProvider(
    UserAuthenticationDto loginDto,
  ) : this._internal(
          (ref) => deleteAuthentication(
            ref as DeleteAuthenticationRef,
            loginDto,
          ),
          from: deleteAuthenticationProvider,
          name: r'deleteAuthenticationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteAuthenticationHash,
          dependencies: DeleteAuthenticationFamily._dependencies,
          allTransitiveDependencies:
              DeleteAuthenticationFamily._allTransitiveDependencies,
          loginDto: loginDto,
        );

  DeleteAuthenticationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.loginDto,
  }) : super.internal();

  final UserAuthenticationDto loginDto;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, bool>> Function(DeleteAuthenticationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteAuthenticationProvider._internal(
        (ref) => create(ref as DeleteAuthenticationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        loginDto: loginDto,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _DeleteAuthenticationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteAuthenticationProvider && other.loginDto == loginDto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, loginDto.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteAuthenticationRef
    on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `loginDto` of this provider.
  UserAuthenticationDto get loginDto;
}

class _DeleteAuthenticationProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with DeleteAuthenticationRef {
  _DeleteAuthenticationProviderElement(super.provider);

  @override
  UserAuthenticationDto get loginDto =>
      (origin as DeleteAuthenticationProvider).loginDto;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
