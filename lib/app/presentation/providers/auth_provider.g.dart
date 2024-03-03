// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

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
String _$initialRequestHash() => r'd6084b6a45a340f90256ad0191e3231bf18097f9';

/// See also [initialRequest].
@ProviderFor(initialRequest)
final initialRequestProvider =
    AutoDisposeFutureProvider<Either<Failure, void>>.internal(
  initialRequest,
  name: r'initialRequestProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$initialRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef InitialRequestRef = AutoDisposeFutureProviderRef<Either<Failure, void>>;
String _$createAuthenticationHash() =>
    r'ae7773fa55bcf3008e100cac8109251a3361d9e1';

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
    extends Family<AsyncValue<Either<Failure, SessionEntity>>> {
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
    extends AutoDisposeFutureProvider<Either<Failure, SessionEntity>> {
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
    FutureOr<Either<Failure, SessionEntity>> Function(
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
  AutoDisposeFutureProviderElement<Either<Failure, SessionEntity>>
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
    on AutoDisposeFutureProviderRef<Either<Failure, SessionEntity>> {
  /// The parameter `loginDto` of this provider.
  UserAuthenticationDto get loginDto;
}

class _CreateAuthenticationProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, SessionEntity>>
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

String _$localAuthRepositoryHash() =>
    r'5a7398f3f83fce085502509a1e24430ed8660df4';

/// See also [localAuthRepository].
@ProviderFor(localAuthRepository)
final localAuthRepositoryProvider =
    AutoDisposeProvider<LocalAuthRepository>.internal(
  localAuthRepository,
  name: r'localAuthRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localAuthRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalAuthRepositoryRef = AutoDisposeProviderRef<LocalAuthRepository>;
String _$authServiceHash() => r'0dfa6cd7b3d2c42d27d44dbdbba6d3799e31f428';

/// See also [authService].
@ProviderFor(authService)
final authServiceProvider = AutoDisposeProvider<AuthService>.internal(
  authService,
  name: r'authServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthServiceRef = AutoDisposeProviderRef<AuthService>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
