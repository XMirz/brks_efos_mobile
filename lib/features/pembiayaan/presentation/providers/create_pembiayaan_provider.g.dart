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
String _$saveLoanHash() => r'4465e3b10f8207979f94d3bb5b845e34f996ba4e';

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

/// See also [saveLoan].
@ProviderFor(saveLoan)
const saveLoanProvider = SaveLoanFamily();

/// See also [saveLoan].
class SaveLoanFamily extends Family<AsyncValue<Either<Failure, bool>>> {
  /// See also [saveLoan].
  const SaveLoanFamily();

  /// See also [saveLoan].
  SaveLoanProvider call(
    Map<String, Object> dataPembiayaan,
  ) {
    return SaveLoanProvider(
      dataPembiayaan,
    );
  }

  @override
  SaveLoanProvider getProviderOverride(
    covariant SaveLoanProvider provider,
  ) {
    return call(
      provider.dataPembiayaan,
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
  String? get name => r'saveLoanProvider';
}

/// See also [saveLoan].
class SaveLoanProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [saveLoan].
  SaveLoanProvider(
    Map<String, Object> dataPembiayaan,
  ) : this._internal(
          (ref) => saveLoan(
            ref as SaveLoanRef,
            dataPembiayaan,
          ),
          from: saveLoanProvider,
          name: r'saveLoanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveLoanHash,
          dependencies: SaveLoanFamily._dependencies,
          allTransitiveDependencies: SaveLoanFamily._allTransitiveDependencies,
          dataPembiayaan: dataPembiayaan,
        );

  SaveLoanProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dataPembiayaan,
  }) : super.internal();

  final Map<String, Object> dataPembiayaan;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, bool>> Function(SaveLoanRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveLoanProvider._internal(
        (ref) => create(ref as SaveLoanRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dataPembiayaan: dataPembiayaan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _SaveLoanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveLoanProvider && other.dataPembiayaan == dataPembiayaan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dataPembiayaan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveLoanRef on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `dataPembiayaan` of this provider.
  Map<String, Object> get dataPembiayaan;
}

class _SaveLoanProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with SaveLoanRef {
  _SaveLoanProviderElement(super.provider);

  @override
  Map<String, Object> get dataPembiayaan =>
      (origin as SaveLoanProvider).dataPembiayaan;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
