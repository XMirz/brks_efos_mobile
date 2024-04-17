// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dashboardRepositoryHash() =>
    r'7904c5718b5b31b41083140aaa472b9080af4714';

/// See also [dashboardRepository].
@ProviderFor(dashboardRepository)
final dashboardRepositoryProvider =
    AutoDisposeProvider<DashboardRepository>.internal(
  dashboardRepository,
  name: r'dashboardRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dashboardRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DashboardRepositoryRef = AutoDisposeProviderRef<DashboardRepository>;
String _$fetchUserDashboardStatsHash() =>
    r'847bb41c5956a369d3b677929bad4e8435b680d1';

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

/// See also [fetchUserDashboardStats].
@ProviderFor(fetchUserDashboardStats)
const fetchUserDashboardStatsProvider = FetchUserDashboardStatsFamily();

/// See also [fetchUserDashboardStats].
class FetchUserDashboardStatsFamily
    extends Family<AsyncValue<DashboardStatsEntity>> {
  /// See also [fetchUserDashboardStats].
  const FetchUserDashboardStatsFamily();

  /// See also [fetchUserDashboardStats].
  FetchUserDashboardStatsProvider call({
    String? username,
  }) {
    return FetchUserDashboardStatsProvider(
      username: username,
    );
  }

  @override
  FetchUserDashboardStatsProvider getProviderOverride(
    covariant FetchUserDashboardStatsProvider provider,
  ) {
    return call(
      username: provider.username,
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
  String? get name => r'fetchUserDashboardStatsProvider';
}

/// See also [fetchUserDashboardStats].
class FetchUserDashboardStatsProvider
    extends AutoDisposeFutureProvider<DashboardStatsEntity> {
  /// See also [fetchUserDashboardStats].
  FetchUserDashboardStatsProvider({
    String? username,
  }) : this._internal(
          (ref) => fetchUserDashboardStats(
            ref as FetchUserDashboardStatsRef,
            username: username,
          ),
          from: fetchUserDashboardStatsProvider,
          name: r'fetchUserDashboardStatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchUserDashboardStatsHash,
          dependencies: FetchUserDashboardStatsFamily._dependencies,
          allTransitiveDependencies:
              FetchUserDashboardStatsFamily._allTransitiveDependencies,
          username: username,
        );

  FetchUserDashboardStatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final String? username;

  @override
  Override overrideWith(
    FutureOr<DashboardStatsEntity> Function(FetchUserDashboardStatsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchUserDashboardStatsProvider._internal(
        (ref) => create(ref as FetchUserDashboardStatsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DashboardStatsEntity> createElement() {
    return _FetchUserDashboardStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchUserDashboardStatsProvider &&
        other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchUserDashboardStatsRef
    on AutoDisposeFutureProviderRef<DashboardStatsEntity> {
  /// The parameter `username` of this provider.
  String? get username;
}

class _FetchUserDashboardStatsProviderElement
    extends AutoDisposeFutureProviderElement<DashboardStatsEntity>
    with FetchUserDashboardStatsRef {
  _FetchUserDashboardStatsProviderElement(super.provider);

  @override
  String? get username => (origin as FetchUserDashboardStatsProvider).username;
}

String _$fetchBranchDashboardStatsHash() =>
    r'711502795ddb0d7cfec75b393091d067bb87d170';

/// See also [fetchBranchDashboardStats].
@ProviderFor(fetchBranchDashboardStats)
const fetchBranchDashboardStatsProvider = FetchBranchDashboardStatsFamily();

/// See also [fetchBranchDashboardStats].
class FetchBranchDashboardStatsFamily
    extends Family<AsyncValue<DashboardStatsEntity>> {
  /// See also [fetchBranchDashboardStats].
  const FetchBranchDashboardStatsFamily();

  /// See also [fetchBranchDashboardStats].
  FetchBranchDashboardStatsProvider call(
    String? idCabang,
  ) {
    return FetchBranchDashboardStatsProvider(
      idCabang,
    );
  }

  @override
  FetchBranchDashboardStatsProvider getProviderOverride(
    covariant FetchBranchDashboardStatsProvider provider,
  ) {
    return call(
      provider.idCabang,
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
  String? get name => r'fetchBranchDashboardStatsProvider';
}

/// See also [fetchBranchDashboardStats].
class FetchBranchDashboardStatsProvider
    extends AutoDisposeFutureProvider<DashboardStatsEntity> {
  /// See also [fetchBranchDashboardStats].
  FetchBranchDashboardStatsProvider(
    String? idCabang,
  ) : this._internal(
          (ref) => fetchBranchDashboardStats(
            ref as FetchBranchDashboardStatsRef,
            idCabang,
          ),
          from: fetchBranchDashboardStatsProvider,
          name: r'fetchBranchDashboardStatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchBranchDashboardStatsHash,
          dependencies: FetchBranchDashboardStatsFamily._dependencies,
          allTransitiveDependencies:
              FetchBranchDashboardStatsFamily._allTransitiveDependencies,
          idCabang: idCabang,
        );

  FetchBranchDashboardStatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idCabang,
  }) : super.internal();

  final String? idCabang;

  @override
  Override overrideWith(
    FutureOr<DashboardStatsEntity> Function(
            FetchBranchDashboardStatsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchBranchDashboardStatsProvider._internal(
        (ref) => create(ref as FetchBranchDashboardStatsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idCabang: idCabang,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DashboardStatsEntity> createElement() {
    return _FetchBranchDashboardStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchBranchDashboardStatsProvider &&
        other.idCabang == idCabang;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idCabang.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchBranchDashboardStatsRef
    on AutoDisposeFutureProviderRef<DashboardStatsEntity> {
  /// The parameter `idCabang` of this provider.
  String? get idCabang;
}

class _FetchBranchDashboardStatsProviderElement
    extends AutoDisposeFutureProviderElement<DashboardStatsEntity>
    with FetchBranchDashboardStatsRef {
  _FetchBranchDashboardStatsProviderElement(super.provider);

  @override
  String? get idCabang =>
      (origin as FetchBranchDashboardStatsProvider).idCabang;
}

String _$fetchBranchDashboardMakerUsersHash() =>
    r'd39f40ca117f270fb9986c71a73259206fbab3d6';

/// See also [fetchBranchDashboardMakerUsers].
@ProviderFor(fetchBranchDashboardMakerUsers)
const fetchBranchDashboardMakerUsersProvider =
    FetchBranchDashboardMakerUsersFamily();

/// See also [fetchBranchDashboardMakerUsers].
class FetchBranchDashboardMakerUsersFamily
    extends Family<AsyncValue<DashboardUsersEntity>> {
  /// See also [fetchBranchDashboardMakerUsers].
  const FetchBranchDashboardMakerUsersFamily();

  /// See also [fetchBranchDashboardMakerUsers].
  FetchBranchDashboardMakerUsersProvider call(
    String? idCabang,
  ) {
    return FetchBranchDashboardMakerUsersProvider(
      idCabang,
    );
  }

  @override
  FetchBranchDashboardMakerUsersProvider getProviderOverride(
    covariant FetchBranchDashboardMakerUsersProvider provider,
  ) {
    return call(
      provider.idCabang,
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
  String? get name => r'fetchBranchDashboardMakerUsersProvider';
}

/// See also [fetchBranchDashboardMakerUsers].
class FetchBranchDashboardMakerUsersProvider
    extends AutoDisposeFutureProvider<DashboardUsersEntity> {
  /// See also [fetchBranchDashboardMakerUsers].
  FetchBranchDashboardMakerUsersProvider(
    String? idCabang,
  ) : this._internal(
          (ref) => fetchBranchDashboardMakerUsers(
            ref as FetchBranchDashboardMakerUsersRef,
            idCabang,
          ),
          from: fetchBranchDashboardMakerUsersProvider,
          name: r'fetchBranchDashboardMakerUsersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchBranchDashboardMakerUsersHash,
          dependencies: FetchBranchDashboardMakerUsersFamily._dependencies,
          allTransitiveDependencies:
              FetchBranchDashboardMakerUsersFamily._allTransitiveDependencies,
          idCabang: idCabang,
        );

  FetchBranchDashboardMakerUsersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idCabang,
  }) : super.internal();

  final String? idCabang;

  @override
  Override overrideWith(
    FutureOr<DashboardUsersEntity> Function(
            FetchBranchDashboardMakerUsersRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchBranchDashboardMakerUsersProvider._internal(
        (ref) => create(ref as FetchBranchDashboardMakerUsersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idCabang: idCabang,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DashboardUsersEntity> createElement() {
    return _FetchBranchDashboardMakerUsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchBranchDashboardMakerUsersProvider &&
        other.idCabang == idCabang;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idCabang.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchBranchDashboardMakerUsersRef
    on AutoDisposeFutureProviderRef<DashboardUsersEntity> {
  /// The parameter `idCabang` of this provider.
  String? get idCabang;
}

class _FetchBranchDashboardMakerUsersProviderElement
    extends AutoDisposeFutureProviderElement<DashboardUsersEntity>
    with FetchBranchDashboardMakerUsersRef {
  _FetchBranchDashboardMakerUsersProviderElement(super.provider);

  @override
  String? get idCabang =>
      (origin as FetchBranchDashboardMakerUsersProvider).idCabang;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
