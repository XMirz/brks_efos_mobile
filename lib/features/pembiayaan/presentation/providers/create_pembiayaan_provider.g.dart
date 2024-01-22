// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pembiayaan_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pembiayaanRepositoryHash() =>
    r'1e3527878f88f8c9ce85ac66d0cf461d3e076743';

/// See also [pembiayaanRepository].
@ProviderFor(pembiayaanRepository)
final pembiayaanRepositoryProvider = Provider<PembiayaanRepository>.internal(
  pembiayaanRepository,
  name: r'pembiayaanRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pembiayaanRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PembiayaanRepositoryRef = ProviderRef<PembiayaanRepository>;
String _$fetchInitialParameterHash() =>
    r'0ea8b71b04fc50955d7e8e2c16f9ffaf01c74f4f';

/// See also [fetchInitialParameter].
@ProviderFor(fetchInitialParameter)
final fetchInitialParameterProvider =
    FutureProvider<Either<Failure, AppParameter>>.internal(
  fetchInitialParameter,
  name: r'fetchInitialParameterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchInitialParameterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchInitialParameterRef
    = FutureProviderRef<Either<Failure, AppParameter>>;
String _$fetchProdukHash() => r'7b1da161ac2c1102b5f88cac4cdfcae9c51a4645';

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

/// See also [fetchProduk].
@ProviderFor(fetchProduk)
const fetchProdukProvider = FetchProdukFamily();

/// See also [fetchProduk].
class FetchProdukFamily extends Family<AsyncValue<List<Parameter>>> {
  /// See also [fetchProduk].
  const FetchProdukFamily();

  /// See also [fetchProduk].
  FetchProdukProvider call(
    String id,
  ) {
    return FetchProdukProvider(
      id,
    );
  }

  @override
  FetchProdukProvider getProviderOverride(
    covariant FetchProdukProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'fetchProdukProvider';
}

/// See also [fetchProduk].
class FetchProdukProvider extends AutoDisposeFutureProvider<List<Parameter>> {
  /// See also [fetchProduk].
  FetchProdukProvider(
    String id,
  ) : this._internal(
          (ref) => fetchProduk(
            ref as FetchProdukRef,
            id,
          ),
          from: fetchProdukProvider,
          name: r'fetchProdukProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchProdukHash,
          dependencies: FetchProdukFamily._dependencies,
          allTransitiveDependencies:
              FetchProdukFamily._allTransitiveDependencies,
          id: id,
        );

  FetchProdukProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<List<Parameter>> Function(FetchProdukRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchProdukProvider._internal(
        (ref) => create(ref as FetchProdukRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Parameter>> createElement() {
    return _FetchProdukProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchProdukProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchProdukRef on AutoDisposeFutureProviderRef<List<Parameter>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _FetchProdukProviderElement
    extends AutoDisposeFutureProviderElement<List<Parameter>>
    with FetchProdukRef {
  _FetchProdukProviderElement(super.provider);

  @override
  String get id => (origin as FetchProdukProvider).id;
}

String _$fetchJenisPengajuanHash() =>
    r'a82fc642572ff507dab98bcd10c8e9f00f2bab34';

/// See also [fetchJenisPengajuan].
@ProviderFor(fetchJenisPengajuan)
const fetchJenisPengajuanProvider = FetchJenisPengajuanFamily();

/// See also [fetchJenisPengajuan].
class FetchJenisPengajuanFamily extends Family<AsyncValue<List<Parameter>>> {
  /// See also [fetchJenisPengajuan].
  const FetchJenisPengajuanFamily();

  /// See also [fetchJenisPengajuan].
  FetchJenisPengajuanProvider call(
    String id,
  ) {
    return FetchJenisPengajuanProvider(
      id,
    );
  }

  @override
  FetchJenisPengajuanProvider getProviderOverride(
    covariant FetchJenisPengajuanProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'fetchJenisPengajuanProvider';
}

/// See also [fetchJenisPengajuan].
class FetchJenisPengajuanProvider
    extends AutoDisposeFutureProvider<List<Parameter>> {
  /// See also [fetchJenisPengajuan].
  FetchJenisPengajuanProvider(
    String id,
  ) : this._internal(
          (ref) => fetchJenisPengajuan(
            ref as FetchJenisPengajuanRef,
            id,
          ),
          from: fetchJenisPengajuanProvider,
          name: r'fetchJenisPengajuanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchJenisPengajuanHash,
          dependencies: FetchJenisPengajuanFamily._dependencies,
          allTransitiveDependencies:
              FetchJenisPengajuanFamily._allTransitiveDependencies,
          id: id,
        );

  FetchJenisPengajuanProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<List<Parameter>> Function(FetchJenisPengajuanRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchJenisPengajuanProvider._internal(
        (ref) => create(ref as FetchJenisPengajuanRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Parameter>> createElement() {
    return _FetchJenisPengajuanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchJenisPengajuanProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchJenisPengajuanRef on AutoDisposeFutureProviderRef<List<Parameter>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _FetchJenisPengajuanProviderElement
    extends AutoDisposeFutureProviderElement<List<Parameter>>
    with FetchJenisPengajuanRef {
  _FetchJenisPengajuanProviderElement(super.provider);

  @override
  String get id => (origin as FetchJenisPengajuanProvider).id;
}

String _$fetchSubProdukHash() => r'77d754e84107cccf555fcc59e2770405f1b9bc43';

/// See also [fetchSubProduk].
@ProviderFor(fetchSubProduk)
const fetchSubProdukProvider = FetchSubProdukFamily();

/// See also [fetchSubProduk].
class FetchSubProdukFamily extends Family<AsyncValue<List<Parameter>>> {
  /// See also [fetchSubProduk].
  const FetchSubProdukFamily();

  /// See also [fetchSubProduk].
  FetchSubProdukProvider call(
    String id,
    String idTemplate,
  ) {
    return FetchSubProdukProvider(
      id,
      idTemplate,
    );
  }

  @override
  FetchSubProdukProvider getProviderOverride(
    covariant FetchSubProdukProvider provider,
  ) {
    return call(
      provider.id,
      provider.idTemplate,
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
  String? get name => r'fetchSubProdukProvider';
}

/// See also [fetchSubProduk].
class FetchSubProdukProvider
    extends AutoDisposeFutureProvider<List<Parameter>> {
  /// See also [fetchSubProduk].
  FetchSubProdukProvider(
    String id,
    String idTemplate,
  ) : this._internal(
          (ref) => fetchSubProduk(
            ref as FetchSubProdukRef,
            id,
            idTemplate,
          ),
          from: fetchSubProdukProvider,
          name: r'fetchSubProdukProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchSubProdukHash,
          dependencies: FetchSubProdukFamily._dependencies,
          allTransitiveDependencies:
              FetchSubProdukFamily._allTransitiveDependencies,
          id: id,
          idTemplate: idTemplate,
        );

  FetchSubProdukProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.idTemplate,
  }) : super.internal();

  final String id;
  final String idTemplate;

  @override
  Override overrideWith(
    FutureOr<List<Parameter>> Function(FetchSubProdukRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchSubProdukProvider._internal(
        (ref) => create(ref as FetchSubProdukRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        idTemplate: idTemplate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Parameter>> createElement() {
    return _FetchSubProdukProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchSubProdukProvider &&
        other.id == id &&
        other.idTemplate == idTemplate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, idTemplate.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchSubProdukRef on AutoDisposeFutureProviderRef<List<Parameter>> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `idTemplate` of this provider.
  String get idTemplate;
}

class _FetchSubProdukProviderElement
    extends AutoDisposeFutureProviderElement<List<Parameter>>
    with FetchSubProdukRef {
  _FetchSubProdukProviderElement(super.provider);

  @override
  String get id => (origin as FetchSubProdukProvider).id;
  @override
  String get idTemplate => (origin as FetchSubProdukProvider).idTemplate;
}

String _$fetchPlanHash() => r'8db4af689b65883db8832ee9c7711ee75d0b4eb9';

/// See also [fetchPlan].
@ProviderFor(fetchPlan)
const fetchPlanProvider = FetchPlanFamily();

/// See also [fetchPlan].
class FetchPlanFamily extends Family<AsyncValue<List<Parameter>>> {
  /// See also [fetchPlan].
  const FetchPlanFamily();

  /// See also [fetchPlan].
  FetchPlanProvider call(
    String id,
    String idTemplate,
  ) {
    return FetchPlanProvider(
      id,
      idTemplate,
    );
  }

  @override
  FetchPlanProvider getProviderOverride(
    covariant FetchPlanProvider provider,
  ) {
    return call(
      provider.id,
      provider.idTemplate,
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
  String? get name => r'fetchPlanProvider';
}

/// See also [fetchPlan].
class FetchPlanProvider extends AutoDisposeFutureProvider<List<Parameter>> {
  /// See also [fetchPlan].
  FetchPlanProvider(
    String id,
    String idTemplate,
  ) : this._internal(
          (ref) => fetchPlan(
            ref as FetchPlanRef,
            id,
            idTemplate,
          ),
          from: fetchPlanProvider,
          name: r'fetchPlanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPlanHash,
          dependencies: FetchPlanFamily._dependencies,
          allTransitiveDependencies: FetchPlanFamily._allTransitiveDependencies,
          id: id,
          idTemplate: idTemplate,
        );

  FetchPlanProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.idTemplate,
  }) : super.internal();

  final String id;
  final String idTemplate;

  @override
  Override overrideWith(
    FutureOr<List<Parameter>> Function(FetchPlanRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPlanProvider._internal(
        (ref) => create(ref as FetchPlanRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        idTemplate: idTemplate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Parameter>> createElement() {
    return _FetchPlanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPlanProvider &&
        other.id == id &&
        other.idTemplate == idTemplate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, idTemplate.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchPlanRef on AutoDisposeFutureProviderRef<List<Parameter>> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `idTemplate` of this provider.
  String get idTemplate;
}

class _FetchPlanProviderElement
    extends AutoDisposeFutureProviderElement<List<Parameter>>
    with FetchPlanRef {
  _FetchPlanProviderElement(super.provider);

  @override
  String get id => (origin as FetchPlanProvider).id;
  @override
  String get idTemplate => (origin as FetchPlanProvider).idTemplate;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
