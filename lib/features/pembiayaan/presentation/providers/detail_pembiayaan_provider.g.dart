// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_pembiayaan_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchLampiranPembiayaanHash() =>
    r'502b95135820958ed90acb325b998970b8261b95';

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

/// See also [fetchLampiranPembiayaan].
@ProviderFor(fetchLampiranPembiayaan)
const fetchLampiranPembiayaanProvider = FetchLampiranPembiayaanFamily();

/// See also [fetchLampiranPembiayaan].
class FetchLampiranPembiayaanFamily
    extends Family<AsyncValue<List<LampiranPembiayaanEntity>>> {
  /// See also [fetchLampiranPembiayaan].
  const FetchLampiranPembiayaanFamily();

  /// See also [fetchLampiranPembiayaan].
  FetchLampiranPembiayaanProvider call(
    String idLoan,
    String kategoriPembiayaan,
  ) {
    return FetchLampiranPembiayaanProvider(
      idLoan,
      kategoriPembiayaan,
    );
  }

  @override
  FetchLampiranPembiayaanProvider getProviderOverride(
    covariant FetchLampiranPembiayaanProvider provider,
  ) {
    return call(
      provider.idLoan,
      provider.kategoriPembiayaan,
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
  String? get name => r'fetchLampiranPembiayaanProvider';
}

/// See also [fetchLampiranPembiayaan].
class FetchLampiranPembiayaanProvider
    extends AutoDisposeFutureProvider<List<LampiranPembiayaanEntity>> {
  /// See also [fetchLampiranPembiayaan].
  FetchLampiranPembiayaanProvider(
    String idLoan,
    String kategoriPembiayaan,
  ) : this._internal(
          (ref) => fetchLampiranPembiayaan(
            ref as FetchLampiranPembiayaanRef,
            idLoan,
            kategoriPembiayaan,
          ),
          from: fetchLampiranPembiayaanProvider,
          name: r'fetchLampiranPembiayaanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchLampiranPembiayaanHash,
          dependencies: FetchLampiranPembiayaanFamily._dependencies,
          allTransitiveDependencies:
              FetchLampiranPembiayaanFamily._allTransitiveDependencies,
          idLoan: idLoan,
          kategoriPembiayaan: kategoriPembiayaan,
        );

  FetchLampiranPembiayaanProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.kategoriPembiayaan,
  }) : super.internal();

  final String idLoan;
  final String kategoriPembiayaan;

  @override
  Override overrideWith(
    FutureOr<List<LampiranPembiayaanEntity>> Function(
            FetchLampiranPembiayaanRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchLampiranPembiayaanProvider._internal(
        (ref) => create(ref as FetchLampiranPembiayaanRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        kategoriPembiayaan: kategoriPembiayaan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<LampiranPembiayaanEntity>>
      createElement() {
    return _FetchLampiranPembiayaanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchLampiranPembiayaanProvider &&
        other.idLoan == idLoan &&
        other.kategoriPembiayaan == kategoriPembiayaan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, kategoriPembiayaan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchLampiranPembiayaanRef
    on AutoDisposeFutureProviderRef<List<LampiranPembiayaanEntity>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `kategoriPembiayaan` of this provider.
  String get kategoriPembiayaan;
}

class _FetchLampiranPembiayaanProviderElement
    extends AutoDisposeFutureProviderElement<List<LampiranPembiayaanEntity>>
    with FetchLampiranPembiayaanRef {
  _FetchLampiranPembiayaanProviderElement(super.provider);

  @override
  String get idLoan => (origin as FetchLampiranPembiayaanProvider).idLoan;
  @override
  String get kategoriPembiayaan =>
      (origin as FetchLampiranPembiayaanProvider).kategoriPembiayaan;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
