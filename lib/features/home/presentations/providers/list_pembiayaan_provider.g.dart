// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_pembiayaan_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchPaginatedProduktifHash() =>
    r'897aec4ecf383fa336ce4c47b5f7ba7412fb3f8c';

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

/// See also [fetchPaginatedProduktif].
@ProviderFor(fetchPaginatedProduktif)
const fetchPaginatedProduktifProvider = FetchPaginatedProduktifFamily();

/// See also [fetchPaginatedProduktif].
class FetchPaginatedProduktifFamily
    extends Family<AsyncValue<Either<Failure, PembiayaanPaginatedEntity>>> {
  /// See also [fetchPaginatedProduktif].
  const FetchPaginatedProduktifFamily();

  /// See also [fetchPaginatedProduktif].
  FetchPaginatedProduktifProvider call(
    PaginationRequest request,
  ) {
    return FetchPaginatedProduktifProvider(
      request,
    );
  }

  @override
  FetchPaginatedProduktifProvider getProviderOverride(
    covariant FetchPaginatedProduktifProvider provider,
  ) {
    return call(
      provider.request,
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
  String? get name => r'fetchPaginatedProduktifProvider';
}

/// See also [fetchPaginatedProduktif].
class FetchPaginatedProduktifProvider extends AutoDisposeFutureProvider<
    Either<Failure, PembiayaanPaginatedEntity>> {
  /// See also [fetchPaginatedProduktif].
  FetchPaginatedProduktifProvider(
    PaginationRequest request,
  ) : this._internal(
          (ref) => fetchPaginatedProduktif(
            ref as FetchPaginatedProduktifRef,
            request,
          ),
          from: fetchPaginatedProduktifProvider,
          name: r'fetchPaginatedProduktifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPaginatedProduktifHash,
          dependencies: FetchPaginatedProduktifFamily._dependencies,
          allTransitiveDependencies:
              FetchPaginatedProduktifFamily._allTransitiveDependencies,
          request: request,
        );

  FetchPaginatedProduktifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final PaginationRequest request;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, PembiayaanPaginatedEntity>> Function(
            FetchPaginatedProduktifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPaginatedProduktifProvider._internal(
        (ref) => create(ref as FetchPaginatedProduktifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, PembiayaanPaginatedEntity>>
      createElement() {
    return _FetchPaginatedProduktifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPaginatedProduktifProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchPaginatedProduktifRef on AutoDisposeFutureProviderRef<
    Either<Failure, PembiayaanPaginatedEntity>> {
  /// The parameter `request` of this provider.
  PaginationRequest get request;
}

class _FetchPaginatedProduktifProviderElement
    extends AutoDisposeFutureProviderElement<
        Either<Failure, PembiayaanPaginatedEntity>>
    with FetchPaginatedProduktifRef {
  _FetchPaginatedProduktifProviderElement(super.provider);

  @override
  PaginationRequest get request =>
      (origin as FetchPaginatedProduktifProvider).request;
}

String _$fetchPaginatedKonsumtifHash() =>
    r'63a6620c39ad3896079c0b564f4136c2ab3fcf99';

/// See also [fetchPaginatedKonsumtif].
@ProviderFor(fetchPaginatedKonsumtif)
const fetchPaginatedKonsumtifProvider = FetchPaginatedKonsumtifFamily();

/// See also [fetchPaginatedKonsumtif].
class FetchPaginatedKonsumtifFamily
    extends Family<AsyncValue<Either<Failure, PembiayaanPaginatedEntity>>> {
  /// See also [fetchPaginatedKonsumtif].
  const FetchPaginatedKonsumtifFamily();

  /// See also [fetchPaginatedKonsumtif].
  FetchPaginatedKonsumtifProvider call(
    PaginationRequest request,
  ) {
    return FetchPaginatedKonsumtifProvider(
      request,
    );
  }

  @override
  FetchPaginatedKonsumtifProvider getProviderOverride(
    covariant FetchPaginatedKonsumtifProvider provider,
  ) {
    return call(
      provider.request,
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
  String? get name => r'fetchPaginatedKonsumtifProvider';
}

/// See also [fetchPaginatedKonsumtif].
class FetchPaginatedKonsumtifProvider extends AutoDisposeFutureProvider<
    Either<Failure, PembiayaanPaginatedEntity>> {
  /// See also [fetchPaginatedKonsumtif].
  FetchPaginatedKonsumtifProvider(
    PaginationRequest request,
  ) : this._internal(
          (ref) => fetchPaginatedKonsumtif(
            ref as FetchPaginatedKonsumtifRef,
            request,
          ),
          from: fetchPaginatedKonsumtifProvider,
          name: r'fetchPaginatedKonsumtifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPaginatedKonsumtifHash,
          dependencies: FetchPaginatedKonsumtifFamily._dependencies,
          allTransitiveDependencies:
              FetchPaginatedKonsumtifFamily._allTransitiveDependencies,
          request: request,
        );

  FetchPaginatedKonsumtifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final PaginationRequest request;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, PembiayaanPaginatedEntity>> Function(
            FetchPaginatedKonsumtifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPaginatedKonsumtifProvider._internal(
        (ref) => create(ref as FetchPaginatedKonsumtifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, PembiayaanPaginatedEntity>>
      createElement() {
    return _FetchPaginatedKonsumtifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPaginatedKonsumtifProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchPaginatedKonsumtifRef on AutoDisposeFutureProviderRef<
    Either<Failure, PembiayaanPaginatedEntity>> {
  /// The parameter `request` of this provider.
  PaginationRequest get request;
}

class _FetchPaginatedKonsumtifProviderElement
    extends AutoDisposeFutureProviderElement<
        Either<Failure, PembiayaanPaginatedEntity>>
    with FetchPaginatedKonsumtifRef {
  _FetchPaginatedKonsumtifProviderElement(super.provider);

  @override
  PaginationRequest get request =>
      (origin as FetchPaginatedKonsumtifProvider).request;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
