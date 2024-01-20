// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authRepositoryHash() => r'53cc338f6241f579159d6ba84d2d550111f3e24d';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider =
    AutoDisposeProvider<AuthRepositoryInterface>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = AutoDisposeProviderRef<AuthRepositoryInterface>;
String _$createAuthenticationHash() =>
    r'3668113b31dc0ad1a416e56f981c75b6624a9249';

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
    UserLoginDto loginDto,
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
    UserLoginDto loginDto,
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

  final UserLoginDto loginDto;

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
  UserLoginDto get loginDto;
}

class _CreateAuthenticationProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, UserEntity>>
    with CreateAuthenticationRef {
  _CreateAuthenticationProviderElement(super.provider);

  @override
  UserLoginDto get loginDto =>
      (origin as CreateAuthenticationProvider).loginDto;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
