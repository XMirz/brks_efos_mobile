// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$parameterRepositoryHash() =>
    r'47c8c98e53c7cb03e1f91061f3bd8f0d9e69073f';

/// See also [parameterRepository].
@ProviderFor(parameterRepository)
final parameterRepositoryProvider = Provider<ParameterRepository>.internal(
  parameterRepository,
  name: r'parameterRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$parameterRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ParameterRepositoryRef = ProviderRef<ParameterRepository>;
String _$fetchInitialParameterHash() =>
    r'587ae64c96cc88508ae5eddba6ff0823306d2875';

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
String _$fetchProdukHash() => r'af17ebb28b3a5c2503e47918530792bceebfb6af';

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
    r'07caa051422fe205b003b25b504e319e7ed63b8c';

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

String _$fetchSubProdukHash() => r'10f02b8b856463bad1c71543a386755c7e8489ce';

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

String _$fetchPlanHash() => r'a7f011c764aa4b69b4b1360b2f741695ad7c702b';

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

String _$fetchKabupatenHash() => r'6f5785fe3dd7d922b270f665fff75053a7835638';

/// See also [fetchKabupaten].
@ProviderFor(fetchKabupaten)
const fetchKabupatenProvider = FetchKabupatenFamily();

/// See also [fetchKabupaten].
class FetchKabupatenFamily extends Family<AsyncValue<List<Parameter>>> {
  /// See also [fetchKabupaten].
  const FetchKabupatenFamily();

  /// See also [fetchKabupaten].
  FetchKabupatenProvider call(
    String id,
  ) {
    return FetchKabupatenProvider(
      id,
    );
  }

  @override
  FetchKabupatenProvider getProviderOverride(
    covariant FetchKabupatenProvider provider,
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
  String? get name => r'fetchKabupatenProvider';
}

/// See also [fetchKabupaten].
class FetchKabupatenProvider
    extends AutoDisposeFutureProvider<List<Parameter>> {
  /// See also [fetchKabupaten].
  FetchKabupatenProvider(
    String id,
  ) : this._internal(
          (ref) => fetchKabupaten(
            ref as FetchKabupatenRef,
            id,
          ),
          from: fetchKabupatenProvider,
          name: r'fetchKabupatenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchKabupatenHash,
          dependencies: FetchKabupatenFamily._dependencies,
          allTransitiveDependencies:
              FetchKabupatenFamily._allTransitiveDependencies,
          id: id,
        );

  FetchKabupatenProvider._internal(
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
    FutureOr<List<Parameter>> Function(FetchKabupatenRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchKabupatenProvider._internal(
        (ref) => create(ref as FetchKabupatenRef),
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
    return _FetchKabupatenProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchKabupatenProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchKabupatenRef on AutoDisposeFutureProviderRef<List<Parameter>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _FetchKabupatenProviderElement
    extends AutoDisposeFutureProviderElement<List<Parameter>>
    with FetchKabupatenRef {
  _FetchKabupatenProviderElement(super.provider);

  @override
  String get id => (origin as FetchKabupatenProvider).id;
}

String _$fetchKecamatanHash() => r'6131cbb447f148938e73ed33a40f65cb8646d8d3';

/// See also [fetchKecamatan].
@ProviderFor(fetchKecamatan)
const fetchKecamatanProvider = FetchKecamatanFamily();

/// See also [fetchKecamatan].
class FetchKecamatanFamily extends Family<AsyncValue<List<Parameter>>> {
  /// See also [fetchKecamatan].
  const FetchKecamatanFamily();

  /// See also [fetchKecamatan].
  FetchKecamatanProvider call(
    String id,
  ) {
    return FetchKecamatanProvider(
      id,
    );
  }

  @override
  FetchKecamatanProvider getProviderOverride(
    covariant FetchKecamatanProvider provider,
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
  String? get name => r'fetchKecamatanProvider';
}

/// See also [fetchKecamatan].
class FetchKecamatanProvider
    extends AutoDisposeFutureProvider<List<Parameter>> {
  /// See also [fetchKecamatan].
  FetchKecamatanProvider(
    String id,
  ) : this._internal(
          (ref) => fetchKecamatan(
            ref as FetchKecamatanRef,
            id,
          ),
          from: fetchKecamatanProvider,
          name: r'fetchKecamatanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchKecamatanHash,
          dependencies: FetchKecamatanFamily._dependencies,
          allTransitiveDependencies:
              FetchKecamatanFamily._allTransitiveDependencies,
          id: id,
        );

  FetchKecamatanProvider._internal(
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
    FutureOr<List<Parameter>> Function(FetchKecamatanRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchKecamatanProvider._internal(
        (ref) => create(ref as FetchKecamatanRef),
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
    return _FetchKecamatanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchKecamatanProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchKecamatanRef on AutoDisposeFutureProviderRef<List<Parameter>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _FetchKecamatanProviderElement
    extends AutoDisposeFutureProviderElement<List<Parameter>>
    with FetchKecamatanRef {
  _FetchKecamatanProviderElement(super.provider);

  @override
  String get id => (origin as FetchKecamatanProvider).id;
}

String _$fetchKelurahanHash() => r'555259fb032fa420854d4eabbae65c0432931513';

/// See also [fetchKelurahan].
@ProviderFor(fetchKelurahan)
const fetchKelurahanProvider = FetchKelurahanFamily();

/// See also [fetchKelurahan].
class FetchKelurahanFamily extends Family<AsyncValue<List<Parameter>>> {
  /// See also [fetchKelurahan].
  const FetchKelurahanFamily();

  /// See also [fetchKelurahan].
  FetchKelurahanProvider call(
    String id,
  ) {
    return FetchKelurahanProvider(
      id,
    );
  }

  @override
  FetchKelurahanProvider getProviderOverride(
    covariant FetchKelurahanProvider provider,
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
  String? get name => r'fetchKelurahanProvider';
}

/// See also [fetchKelurahan].
class FetchKelurahanProvider
    extends AutoDisposeFutureProvider<List<Parameter>> {
  /// See also [fetchKelurahan].
  FetchKelurahanProvider(
    String id,
  ) : this._internal(
          (ref) => fetchKelurahan(
            ref as FetchKelurahanRef,
            id,
          ),
          from: fetchKelurahanProvider,
          name: r'fetchKelurahanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchKelurahanHash,
          dependencies: FetchKelurahanFamily._dependencies,
          allTransitiveDependencies:
              FetchKelurahanFamily._allTransitiveDependencies,
          id: id,
        );

  FetchKelurahanProvider._internal(
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
    FutureOr<List<Parameter>> Function(FetchKelurahanRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchKelurahanProvider._internal(
        (ref) => create(ref as FetchKelurahanRef),
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
    return _FetchKelurahanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchKelurahanProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchKelurahanRef on AutoDisposeFutureProviderRef<List<Parameter>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _FetchKelurahanProviderElement
    extends AutoDisposeFutureProviderElement<List<Parameter>>
    with FetchKelurahanRef {
  _FetchKelurahanProviderElement(super.provider);

  @override
  String get id => (origin as FetchKelurahanProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
