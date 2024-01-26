// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_pembiayaan_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchPaginatedPembiayaanHash() =>
    r'94c679fab74e99cc5aaabdf1edb9dd8e2cb833ff';

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

/// See also [fetchPaginatedPembiayaan].
@ProviderFor(fetchPaginatedPembiayaan)
const fetchPaginatedPembiayaanProvider = FetchPaginatedPembiayaanFamily();

/// See also [fetchPaginatedPembiayaan].
class FetchPaginatedPembiayaanFamily
    extends Family<AsyncValue<Either<Failure, PembiayaanPaginatedEntity>>> {
  /// See also [fetchPaginatedPembiayaan].
  const FetchPaginatedPembiayaanFamily();

  /// See also [fetchPaginatedPembiayaan].
  FetchPaginatedPembiayaanProvider call(
    String endpointList,
    PaginationRequest request,
  ) {
    return FetchPaginatedPembiayaanProvider(
      endpointList,
      request,
    );
  }

  @override
  FetchPaginatedPembiayaanProvider getProviderOverride(
    covariant FetchPaginatedPembiayaanProvider provider,
  ) {
    return call(
      provider.endpointList,
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
  String? get name => r'fetchPaginatedPembiayaanProvider';
}

/// See also [fetchPaginatedPembiayaan].
class FetchPaginatedPembiayaanProvider extends AutoDisposeFutureProvider<
    Either<Failure, PembiayaanPaginatedEntity>> {
  /// See also [fetchPaginatedPembiayaan].
  FetchPaginatedPembiayaanProvider(
    String endpointList,
    PaginationRequest request,
  ) : this._internal(
          (ref) => fetchPaginatedPembiayaan(
            ref as FetchPaginatedPembiayaanRef,
            endpointList,
            request,
          ),
          from: fetchPaginatedPembiayaanProvider,
          name: r'fetchPaginatedPembiayaanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPaginatedPembiayaanHash,
          dependencies: FetchPaginatedPembiayaanFamily._dependencies,
          allTransitiveDependencies:
              FetchPaginatedPembiayaanFamily._allTransitiveDependencies,
          endpointList: endpointList,
          request: request,
        );

  FetchPaginatedPembiayaanProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.endpointList,
    required this.request,
  }) : super.internal();

  final String endpointList;
  final PaginationRequest request;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, PembiayaanPaginatedEntity>> Function(
            FetchPaginatedPembiayaanRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPaginatedPembiayaanProvider._internal(
        (ref) => create(ref as FetchPaginatedPembiayaanRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        endpointList: endpointList,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, PembiayaanPaginatedEntity>>
      createElement() {
    return _FetchPaginatedPembiayaanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPaginatedPembiayaanProvider &&
        other.endpointList == endpointList &&
        other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, endpointList.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchPaginatedPembiayaanRef on AutoDisposeFutureProviderRef<
    Either<Failure, PembiayaanPaginatedEntity>> {
  /// The parameter `endpointList` of this provider.
  String get endpointList;

  /// The parameter `request` of this provider.
  PaginationRequest get request;
}

class _FetchPaginatedPembiayaanProviderElement
    extends AutoDisposeFutureProviderElement<
        Either<Failure, PembiayaanPaginatedEntity>>
    with FetchPaginatedPembiayaanRef {
  _FetchPaginatedPembiayaanProviderElement(super.provider);

  @override
  String get endpointList =>
      (origin as FetchPaginatedPembiayaanProvider).endpointList;
  @override
  PaginationRequest get request =>
      (origin as FetchPaginatedPembiayaanProvider).request;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
