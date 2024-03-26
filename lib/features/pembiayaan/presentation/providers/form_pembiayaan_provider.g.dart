// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_pembiayaan_provider.dart';

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
String _$saveLoanHash() => r'd3fb84000122d918f1d82f4b2c237ee4f13d7b53';

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
    CreateLoanRequest request,
  ) {
    return SaveLoanProvider(
      request,
    );
  }

  @override
  SaveLoanProvider getProviderOverride(
    covariant SaveLoanProvider provider,
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
  String? get name => r'saveLoanProvider';
}

/// See also [saveLoan].
class SaveLoanProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [saveLoan].
  SaveLoanProvider(
    CreateLoanRequest request,
  ) : this._internal(
          (ref) => saveLoan(
            ref as SaveLoanRef,
            request,
          ),
          from: saveLoanProvider,
          name: r'saveLoanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveLoanHash,
          dependencies: SaveLoanFamily._dependencies,
          allTransitiveDependencies: SaveLoanFamily._allTransitiveDependencies,
          request: request,
        );

  SaveLoanProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final CreateLoanRequest request;

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
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _SaveLoanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveLoanProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveLoanRef on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `request` of this provider.
  CreateLoanRequest get request;
}

class _SaveLoanProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with SaveLoanRef {
  _SaveLoanProviderElement(super.provider);

  @override
  CreateLoanRequest get request => (origin as SaveLoanProvider).request;
}

String _$updateLoanHash() => r'489ee97f5f5552ca84c2037bc55f6be83347c79b';

/// See also [updateLoan].
@ProviderFor(updateLoan)
const updateLoanProvider = UpdateLoanFamily();

/// See also [updateLoan].
class UpdateLoanFamily extends Family<AsyncValue<Either<Failure, bool>>> {
  /// See also [updateLoan].
  const UpdateLoanFamily();

  /// See also [updateLoan].
  UpdateLoanProvider call(
    CreateLoanRequest request,
  ) {
    return UpdateLoanProvider(
      request,
    );
  }

  @override
  UpdateLoanProvider getProviderOverride(
    covariant UpdateLoanProvider provider,
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
  String? get name => r'updateLoanProvider';
}

/// See also [updateLoan].
class UpdateLoanProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [updateLoan].
  UpdateLoanProvider(
    CreateLoanRequest request,
  ) : this._internal(
          (ref) => updateLoan(
            ref as UpdateLoanRef,
            request,
          ),
          from: updateLoanProvider,
          name: r'updateLoanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateLoanHash,
          dependencies: UpdateLoanFamily._dependencies,
          allTransitiveDependencies:
              UpdateLoanFamily._allTransitiveDependencies,
          request: request,
        );

  UpdateLoanProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final CreateLoanRequest request;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, bool>> Function(UpdateLoanRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateLoanProvider._internal(
        (ref) => create(ref as UpdateLoanRef),
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
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _UpdateLoanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateLoanProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateLoanRef on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `request` of this provider.
  CreateLoanRequest get request;
}

class _UpdateLoanProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with UpdateLoanRef {
  _UpdateLoanProviderElement(super.provider);

  @override
  CreateLoanRequest get request => (origin as UpdateLoanProvider).request;
}

String _$fetchEditPembiayaanHash() =>
    r'f6ebfb864e0afb8c1a337a49bf2659864f0c4b90';

/// See also [fetchEditPembiayaan].
@ProviderFor(fetchEditPembiayaan)
const fetchEditPembiayaanProvider = FetchEditPembiayaanFamily();

/// See also [fetchEditPembiayaan].
class FetchEditPembiayaanFamily
    extends Family<AsyncValue<Either<Failure, PembiayaanEntity>>> {
  /// See also [fetchEditPembiayaan].
  const FetchEditPembiayaanFamily();

  /// See also [fetchEditPembiayaan].
  FetchEditPembiayaanProvider call(
    String idLoan,
  ) {
    return FetchEditPembiayaanProvider(
      idLoan,
    );
  }

  @override
  FetchEditPembiayaanProvider getProviderOverride(
    covariant FetchEditPembiayaanProvider provider,
  ) {
    return call(
      provider.idLoan,
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
  String? get name => r'fetchEditPembiayaanProvider';
}

/// See also [fetchEditPembiayaan].
class FetchEditPembiayaanProvider
    extends AutoDisposeFutureProvider<Either<Failure, PembiayaanEntity>> {
  /// See also [fetchEditPembiayaan].
  FetchEditPembiayaanProvider(
    String idLoan,
  ) : this._internal(
          (ref) => fetchEditPembiayaan(
            ref as FetchEditPembiayaanRef,
            idLoan,
          ),
          from: fetchEditPembiayaanProvider,
          name: r'fetchEditPembiayaanProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchEditPembiayaanHash,
          dependencies: FetchEditPembiayaanFamily._dependencies,
          allTransitiveDependencies:
              FetchEditPembiayaanFamily._allTransitiveDependencies,
          idLoan: idLoan,
        );

  FetchEditPembiayaanProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
  }) : super.internal();

  final String idLoan;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, PembiayaanEntity>> Function(
            FetchEditPembiayaanRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchEditPembiayaanProvider._internal(
        (ref) => create(ref as FetchEditPembiayaanRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, PembiayaanEntity>>
      createElement() {
    return _FetchEditPembiayaanProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchEditPembiayaanProvider && other.idLoan == idLoan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchEditPembiayaanRef
    on AutoDisposeFutureProviderRef<Either<Failure, PembiayaanEntity>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;
}

class _FetchEditPembiayaanProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, PembiayaanEntity>>
    with FetchEditPembiayaanRef {
  _FetchEditPembiayaanProviderElement(super.provider);

  @override
  String get idLoan => (origin as FetchEditPembiayaanProvider).idLoan;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
