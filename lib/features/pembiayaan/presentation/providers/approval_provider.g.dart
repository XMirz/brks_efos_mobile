// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$approvalRepositoryHash() =>
    r'04ad5c6ebbfeb70d43eb7237e18381490c1987af';

/// See also [approvalRepository].
@ProviderFor(approvalRepository)
final approvalRepositoryProvider = Provider<ApprovalRepository>.internal(
  approvalRepository,
  name: r'approvalRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$approvalRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ApprovalRepositoryRef = ProviderRef<ApprovalRepository>;
String _$approvalOneKonsumtifHash() =>
    r'40aabbcf89179029008f88f165a1ba330e2a2eb5';

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

/// See also [approvalOneKonsumtif].
@ProviderFor(approvalOneKonsumtif)
const approvalOneKonsumtifProvider = ApprovalOneKonsumtifFamily();

/// See also [approvalOneKonsumtif].
class ApprovalOneKonsumtifFamily
    extends Family<AsyncValue<Either<Failure, bool>>> {
  /// See also [approvalOneKonsumtif].
  const ApprovalOneKonsumtifFamily();

  /// See also [approvalOneKonsumtif].
  ApprovalOneKonsumtifProvider call({
    required String idLoan,
    required String rekomendasi,
    required String arahanCall,
  }) {
    return ApprovalOneKonsumtifProvider(
      idLoan: idLoan,
      rekomendasi: rekomendasi,
      arahanCall: arahanCall,
    );
  }

  @override
  ApprovalOneKonsumtifProvider getProviderOverride(
    covariant ApprovalOneKonsumtifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
      rekomendasi: provider.rekomendasi,
      arahanCall: provider.arahanCall,
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
  String? get name => r'approvalOneKonsumtifProvider';
}

/// See also [approvalOneKonsumtif].
class ApprovalOneKonsumtifProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [approvalOneKonsumtif].
  ApprovalOneKonsumtifProvider({
    required String idLoan,
    required String rekomendasi,
    required String arahanCall,
  }) : this._internal(
          (ref) => approvalOneKonsumtif(
            ref as ApprovalOneKonsumtifRef,
            idLoan: idLoan,
            rekomendasi: rekomendasi,
            arahanCall: arahanCall,
          ),
          from: approvalOneKonsumtifProvider,
          name: r'approvalOneKonsumtifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$approvalOneKonsumtifHash,
          dependencies: ApprovalOneKonsumtifFamily._dependencies,
          allTransitiveDependencies:
              ApprovalOneKonsumtifFamily._allTransitiveDependencies,
          idLoan: idLoan,
          rekomendasi: rekomendasi,
          arahanCall: arahanCall,
        );

  ApprovalOneKonsumtifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.rekomendasi,
    required this.arahanCall,
  }) : super.internal();

  final String idLoan;
  final String rekomendasi;
  final String arahanCall;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, bool>> Function(ApprovalOneKonsumtifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApprovalOneKonsumtifProvider._internal(
        (ref) => create(ref as ApprovalOneKonsumtifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        rekomendasi: rekomendasi,
        arahanCall: arahanCall,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _ApprovalOneKonsumtifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApprovalOneKonsumtifProvider &&
        other.idLoan == idLoan &&
        other.rekomendasi == rekomendasi &&
        other.arahanCall == arahanCall;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, rekomendasi.hashCode);
    hash = _SystemHash.combine(hash, arahanCall.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ApprovalOneKonsumtifRef
    on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `rekomendasi` of this provider.
  String get rekomendasi;

  /// The parameter `arahanCall` of this provider.
  String get arahanCall;
}

class _ApprovalOneKonsumtifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with ApprovalOneKonsumtifRef {
  _ApprovalOneKonsumtifProviderElement(super.provider);

  @override
  String get idLoan => (origin as ApprovalOneKonsumtifProvider).idLoan;
  @override
  String get rekomendasi =>
      (origin as ApprovalOneKonsumtifProvider).rekomendasi;
  @override
  String get arahanCall => (origin as ApprovalOneKonsumtifProvider).arahanCall;
}

String _$approvalTwoKonsumtifHash() =>
    r'86b8c57181806b781102602e5cfc175cda176ab6';

/// See also [approvalTwoKonsumtif].
@ProviderFor(approvalTwoKonsumtif)
const approvalTwoKonsumtifProvider = ApprovalTwoKonsumtifFamily();

/// See also [approvalTwoKonsumtif].
class ApprovalTwoKonsumtifFamily
    extends Family<AsyncValue<Either<Failure, bool>>> {
  /// See also [approvalTwoKonsumtif].
  const ApprovalTwoKonsumtifFamily();

  /// See also [approvalTwoKonsumtif].
  ApprovalTwoKonsumtifProvider call({
    required String idLoan,
    required String rekomendasi,
  }) {
    return ApprovalTwoKonsumtifProvider(
      idLoan: idLoan,
      rekomendasi: rekomendasi,
    );
  }

  @override
  ApprovalTwoKonsumtifProvider getProviderOverride(
    covariant ApprovalTwoKonsumtifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
      rekomendasi: provider.rekomendasi,
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
  String? get name => r'approvalTwoKonsumtifProvider';
}

/// See also [approvalTwoKonsumtif].
class ApprovalTwoKonsumtifProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [approvalTwoKonsumtif].
  ApprovalTwoKonsumtifProvider({
    required String idLoan,
    required String rekomendasi,
  }) : this._internal(
          (ref) => approvalTwoKonsumtif(
            ref as ApprovalTwoKonsumtifRef,
            idLoan: idLoan,
            rekomendasi: rekomendasi,
          ),
          from: approvalTwoKonsumtifProvider,
          name: r'approvalTwoKonsumtifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$approvalTwoKonsumtifHash,
          dependencies: ApprovalTwoKonsumtifFamily._dependencies,
          allTransitiveDependencies:
              ApprovalTwoKonsumtifFamily._allTransitiveDependencies,
          idLoan: idLoan,
          rekomendasi: rekomendasi,
        );

  ApprovalTwoKonsumtifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.rekomendasi,
  }) : super.internal();

  final String idLoan;
  final String rekomendasi;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, bool>> Function(ApprovalTwoKonsumtifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApprovalTwoKonsumtifProvider._internal(
        (ref) => create(ref as ApprovalTwoKonsumtifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        rekomendasi: rekomendasi,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _ApprovalTwoKonsumtifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApprovalTwoKonsumtifProvider &&
        other.idLoan == idLoan &&
        other.rekomendasi == rekomendasi;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, rekomendasi.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ApprovalTwoKonsumtifRef
    on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `rekomendasi` of this provider.
  String get rekomendasi;
}

class _ApprovalTwoKonsumtifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with ApprovalTwoKonsumtifRef {
  _ApprovalTwoKonsumtifProviderElement(super.provider);

  @override
  String get idLoan => (origin as ApprovalTwoKonsumtifProvider).idLoan;
  @override
  String get rekomendasi =>
      (origin as ApprovalTwoKonsumtifProvider).rekomendasi;
}

String _$approvalThreeKonsumtifHash() =>
    r'c5ef4672d1468e44437671d5a4b0c49bb81d4af5';

/// See also [approvalThreeKonsumtif].
@ProviderFor(approvalThreeKonsumtif)
const approvalThreeKonsumtifProvider = ApprovalThreeKonsumtifFamily();

/// See also [approvalThreeKonsumtif].
class ApprovalThreeKonsumtifFamily
    extends Family<AsyncValue<Either<Failure, bool>>> {
  /// See also [approvalThreeKonsumtif].
  const ApprovalThreeKonsumtifFamily();

  /// See also [approvalThreeKonsumtif].
  ApprovalThreeKonsumtifProvider call({
    required String idLoan,
    required String keputusan,
  }) {
    return ApprovalThreeKonsumtifProvider(
      idLoan: idLoan,
      keputusan: keputusan,
    );
  }

  @override
  ApprovalThreeKonsumtifProvider getProviderOverride(
    covariant ApprovalThreeKonsumtifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
      keputusan: provider.keputusan,
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
  String? get name => r'approvalThreeKonsumtifProvider';
}

/// See also [approvalThreeKonsumtif].
class ApprovalThreeKonsumtifProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [approvalThreeKonsumtif].
  ApprovalThreeKonsumtifProvider({
    required String idLoan,
    required String keputusan,
  }) : this._internal(
          (ref) => approvalThreeKonsumtif(
            ref as ApprovalThreeKonsumtifRef,
            idLoan: idLoan,
            keputusan: keputusan,
          ),
          from: approvalThreeKonsumtifProvider,
          name: r'approvalThreeKonsumtifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$approvalThreeKonsumtifHash,
          dependencies: ApprovalThreeKonsumtifFamily._dependencies,
          allTransitiveDependencies:
              ApprovalThreeKonsumtifFamily._allTransitiveDependencies,
          idLoan: idLoan,
          keputusan: keputusan,
        );

  ApprovalThreeKonsumtifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.keputusan,
  }) : super.internal();

  final String idLoan;
  final String keputusan;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, bool>> Function(ApprovalThreeKonsumtifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApprovalThreeKonsumtifProvider._internal(
        (ref) => create(ref as ApprovalThreeKonsumtifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        keputusan: keputusan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _ApprovalThreeKonsumtifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApprovalThreeKonsumtifProvider &&
        other.idLoan == idLoan &&
        other.keputusan == keputusan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, keputusan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ApprovalThreeKonsumtifRef
    on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `keputusan` of this provider.
  String get keputusan;
}

class _ApprovalThreeKonsumtifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with ApprovalThreeKonsumtifRef {
  _ApprovalThreeKonsumtifProviderElement(super.provider);

  @override
  String get idLoan => (origin as ApprovalThreeKonsumtifProvider).idLoan;
  @override
  String get keputusan => (origin as ApprovalThreeKonsumtifProvider).keputusan;
}

String _$approvalOneProduktifHash() =>
    r'da79f67f94083348544c6327e0c3d4cedfa98bd6';

/// See also [approvalOneProduktif].
@ProviderFor(approvalOneProduktif)
const approvalOneProduktifProvider = ApprovalOneProduktifFamily();

/// See also [approvalOneProduktif].
class ApprovalOneProduktifFamily
    extends Family<AsyncValue<Either<Failure, bool>>> {
  /// See also [approvalOneProduktif].
  const ApprovalOneProduktifFamily();

  /// See also [approvalOneProduktif].
  ApprovalOneProduktifProvider call({
    required String idLoan,
    required String rekomendasi,
  }) {
    return ApprovalOneProduktifProvider(
      idLoan: idLoan,
      rekomendasi: rekomendasi,
    );
  }

  @override
  ApprovalOneProduktifProvider getProviderOverride(
    covariant ApprovalOneProduktifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
      rekomendasi: provider.rekomendasi,
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
  String? get name => r'approvalOneProduktifProvider';
}

/// See also [approvalOneProduktif].
class ApprovalOneProduktifProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [approvalOneProduktif].
  ApprovalOneProduktifProvider({
    required String idLoan,
    required String rekomendasi,
  }) : this._internal(
          (ref) => approvalOneProduktif(
            ref as ApprovalOneProduktifRef,
            idLoan: idLoan,
            rekomendasi: rekomendasi,
          ),
          from: approvalOneProduktifProvider,
          name: r'approvalOneProduktifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$approvalOneProduktifHash,
          dependencies: ApprovalOneProduktifFamily._dependencies,
          allTransitiveDependencies:
              ApprovalOneProduktifFamily._allTransitiveDependencies,
          idLoan: idLoan,
          rekomendasi: rekomendasi,
        );

  ApprovalOneProduktifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.rekomendasi,
  }) : super.internal();

  final String idLoan;
  final String rekomendasi;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, bool>> Function(ApprovalOneProduktifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApprovalOneProduktifProvider._internal(
        (ref) => create(ref as ApprovalOneProduktifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        rekomendasi: rekomendasi,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _ApprovalOneProduktifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApprovalOneProduktifProvider &&
        other.idLoan == idLoan &&
        other.rekomendasi == rekomendasi;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, rekomendasi.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ApprovalOneProduktifRef
    on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `rekomendasi` of this provider.
  String get rekomendasi;
}

class _ApprovalOneProduktifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with ApprovalOneProduktifRef {
  _ApprovalOneProduktifProviderElement(super.provider);

  @override
  String get idLoan => (origin as ApprovalOneProduktifProvider).idLoan;
  @override
  String get rekomendasi =>
      (origin as ApprovalOneProduktifProvider).rekomendasi;
}

String _$approvalTwoProduktifHash() =>
    r'f987fb8f132c6e42486754854d57cf2f12a67353';

/// See also [approvalTwoProduktif].
@ProviderFor(approvalTwoProduktif)
const approvalTwoProduktifProvider = ApprovalTwoProduktifFamily();

/// See also [approvalTwoProduktif].
class ApprovalTwoProduktifFamily
    extends Family<AsyncValue<Either<Failure, bool>>> {
  /// See also [approvalTwoProduktif].
  const ApprovalTwoProduktifFamily();

  /// See also [approvalTwoProduktif].
  ApprovalTwoProduktifProvider call({
    required String idLoan,
  }) {
    return ApprovalTwoProduktifProvider(
      idLoan: idLoan,
    );
  }

  @override
  ApprovalTwoProduktifProvider getProviderOverride(
    covariant ApprovalTwoProduktifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
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
  String? get name => r'approvalTwoProduktifProvider';
}

/// See also [approvalTwoProduktif].
class ApprovalTwoProduktifProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [approvalTwoProduktif].
  ApprovalTwoProduktifProvider({
    required String idLoan,
  }) : this._internal(
          (ref) => approvalTwoProduktif(
            ref as ApprovalTwoProduktifRef,
            idLoan: idLoan,
          ),
          from: approvalTwoProduktifProvider,
          name: r'approvalTwoProduktifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$approvalTwoProduktifHash,
          dependencies: ApprovalTwoProduktifFamily._dependencies,
          allTransitiveDependencies:
              ApprovalTwoProduktifFamily._allTransitiveDependencies,
          idLoan: idLoan,
        );

  ApprovalTwoProduktifProvider._internal(
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
    FutureOr<Either<Failure, bool>> Function(ApprovalTwoProduktifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApprovalTwoProduktifProvider._internal(
        (ref) => create(ref as ApprovalTwoProduktifRef),
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
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _ApprovalTwoProduktifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApprovalTwoProduktifProvider && other.idLoan == idLoan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ApprovalTwoProduktifRef
    on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;
}

class _ApprovalTwoProduktifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with ApprovalTwoProduktifRef {
  _ApprovalTwoProduktifProviderElement(super.provider);

  @override
  String get idLoan => (origin as ApprovalTwoProduktifProvider).idLoan;
}

String _$approvalThreeProduktifHash() =>
    r'0a24fc3a7bede01c87b320166fd8a7a13167b018';

/// See also [approvalThreeProduktif].
@ProviderFor(approvalThreeProduktif)
const approvalThreeProduktifProvider = ApprovalThreeProduktifFamily();

/// See also [approvalThreeProduktif].
class ApprovalThreeProduktifFamily
    extends Family<AsyncValue<Either<Failure, bool>>> {
  /// See also [approvalThreeProduktif].
  const ApprovalThreeProduktifFamily();

  /// See also [approvalThreeProduktif].
  ApprovalThreeProduktifProvider call({
    required String idLoan,
    required String keputusan,
  }) {
    return ApprovalThreeProduktifProvider(
      idLoan: idLoan,
      keputusan: keputusan,
    );
  }

  @override
  ApprovalThreeProduktifProvider getProviderOverride(
    covariant ApprovalThreeProduktifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
      keputusan: provider.keputusan,
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
  String? get name => r'approvalThreeProduktifProvider';
}

/// See also [approvalThreeProduktif].
class ApprovalThreeProduktifProvider
    extends AutoDisposeFutureProvider<Either<Failure, bool>> {
  /// See also [approvalThreeProduktif].
  ApprovalThreeProduktifProvider({
    required String idLoan,
    required String keputusan,
  }) : this._internal(
          (ref) => approvalThreeProduktif(
            ref as ApprovalThreeProduktifRef,
            idLoan: idLoan,
            keputusan: keputusan,
          ),
          from: approvalThreeProduktifProvider,
          name: r'approvalThreeProduktifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$approvalThreeProduktifHash,
          dependencies: ApprovalThreeProduktifFamily._dependencies,
          allTransitiveDependencies:
              ApprovalThreeProduktifFamily._allTransitiveDependencies,
          idLoan: idLoan,
          keputusan: keputusan,
        );

  ApprovalThreeProduktifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.keputusan,
  }) : super.internal();

  final String idLoan;
  final String keputusan;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, bool>> Function(ApprovalThreeProduktifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApprovalThreeProduktifProvider._internal(
        (ref) => create(ref as ApprovalThreeProduktifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        keputusan: keputusan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, bool>> createElement() {
    return _ApprovalThreeProduktifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApprovalThreeProduktifProvider &&
        other.idLoan == idLoan &&
        other.keputusan == keputusan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, keputusan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ApprovalThreeProduktifRef
    on AutoDisposeFutureProviderRef<Either<Failure, bool>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `keputusan` of this provider.
  String get keputusan;
}

class _ApprovalThreeProduktifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, bool>>
    with ApprovalThreeProduktifRef {
  _ApprovalThreeProduktifProviderElement(super.provider);

  @override
  String get idLoan => (origin as ApprovalThreeProduktifProvider).idLoan;
  @override
  String get keputusan => (origin as ApprovalThreeProduktifProvider).keputusan;
}

String _$reviewKonsumtifHash() => r'172e9f4bdda05914ca24551bd3d8fad1848db21b';

/// See also [reviewKonsumtif].
@ProviderFor(reviewKonsumtif)
const reviewKonsumtifProvider = ReviewKonsumtifFamily();

/// See also [reviewKonsumtif].
class ReviewKonsumtifFamily extends Family<AsyncValue<Either<Failure, void>>> {
  /// See also [reviewKonsumtif].
  const ReviewKonsumtifFamily();

  /// See also [reviewKonsumtif].
  ReviewKonsumtifProvider call({
    required String idLoan,
    required String keterangan,
  }) {
    return ReviewKonsumtifProvider(
      idLoan: idLoan,
      keterangan: keterangan,
    );
  }

  @override
  ReviewKonsumtifProvider getProviderOverride(
    covariant ReviewKonsumtifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
      keterangan: provider.keterangan,
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
  String? get name => r'reviewKonsumtifProvider';
}

/// See also [reviewKonsumtif].
class ReviewKonsumtifProvider
    extends AutoDisposeFutureProvider<Either<Failure, void>> {
  /// See also [reviewKonsumtif].
  ReviewKonsumtifProvider({
    required String idLoan,
    required String keterangan,
  }) : this._internal(
          (ref) => reviewKonsumtif(
            ref as ReviewKonsumtifRef,
            idLoan: idLoan,
            keterangan: keterangan,
          ),
          from: reviewKonsumtifProvider,
          name: r'reviewKonsumtifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reviewKonsumtifHash,
          dependencies: ReviewKonsumtifFamily._dependencies,
          allTransitiveDependencies:
              ReviewKonsumtifFamily._allTransitiveDependencies,
          idLoan: idLoan,
          keterangan: keterangan,
        );

  ReviewKonsumtifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.keterangan,
  }) : super.internal();

  final String idLoan;
  final String keterangan;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, void>> Function(ReviewKonsumtifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReviewKonsumtifProvider._internal(
        (ref) => create(ref as ReviewKonsumtifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        keterangan: keterangan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, void>> createElement() {
    return _ReviewKonsumtifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReviewKonsumtifProvider &&
        other.idLoan == idLoan &&
        other.keterangan == keterangan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, keterangan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ReviewKonsumtifRef
    on AutoDisposeFutureProviderRef<Either<Failure, void>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `keterangan` of this provider.
  String get keterangan;
}

class _ReviewKonsumtifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, void>>
    with ReviewKonsumtifRef {
  _ReviewKonsumtifProviderElement(super.provider);

  @override
  String get idLoan => (origin as ReviewKonsumtifProvider).idLoan;
  @override
  String get keterangan => (origin as ReviewKonsumtifProvider).keterangan;
}

String _$reviewProduktifHash() => r'0b87e3e95b17d48db19cc9a8c7c41e938d4f1f87';

/// See also [reviewProduktif].
@ProviderFor(reviewProduktif)
const reviewProduktifProvider = ReviewProduktifFamily();

/// See also [reviewProduktif].
class ReviewProduktifFamily extends Family<AsyncValue<Either<Failure, void>>> {
  /// See also [reviewProduktif].
  const ReviewProduktifFamily();

  /// See also [reviewProduktif].
  ReviewProduktifProvider call({
    required String idLoan,
    required String keterangan,
  }) {
    return ReviewProduktifProvider(
      idLoan: idLoan,
      keterangan: keterangan,
    );
  }

  @override
  ReviewProduktifProvider getProviderOverride(
    covariant ReviewProduktifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
      keterangan: provider.keterangan,
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
  String? get name => r'reviewProduktifProvider';
}

/// See also [reviewProduktif].
class ReviewProduktifProvider
    extends AutoDisposeFutureProvider<Either<Failure, void>> {
  /// See also [reviewProduktif].
  ReviewProduktifProvider({
    required String idLoan,
    required String keterangan,
  }) : this._internal(
          (ref) => reviewProduktif(
            ref as ReviewProduktifRef,
            idLoan: idLoan,
            keterangan: keterangan,
          ),
          from: reviewProduktifProvider,
          name: r'reviewProduktifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reviewProduktifHash,
          dependencies: ReviewProduktifFamily._dependencies,
          allTransitiveDependencies:
              ReviewProduktifFamily._allTransitiveDependencies,
          idLoan: idLoan,
          keterangan: keterangan,
        );

  ReviewProduktifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.keterangan,
  }) : super.internal();

  final String idLoan;
  final String keterangan;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, void>> Function(ReviewProduktifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReviewProduktifProvider._internal(
        (ref) => create(ref as ReviewProduktifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        keterangan: keterangan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, void>> createElement() {
    return _ReviewProduktifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReviewProduktifProvider &&
        other.idLoan == idLoan &&
        other.keterangan == keterangan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, keterangan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ReviewProduktifRef
    on AutoDisposeFutureProviderRef<Either<Failure, void>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `keterangan` of this provider.
  String get keterangan;
}

class _ReviewProduktifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, void>>
    with ReviewProduktifRef {
  _ReviewProduktifProviderElement(super.provider);

  @override
  String get idLoan => (origin as ReviewProduktifProvider).idLoan;
  @override
  String get keterangan => (origin as ReviewProduktifProvider).keterangan;
}

String _$rejectKonsumtifHash() => r'aef436014ea02e60d1e2ceee6674fcfe5a326900';

/// See also [rejectKonsumtif].
@ProviderFor(rejectKonsumtif)
const rejectKonsumtifProvider = RejectKonsumtifFamily();

/// See also [rejectKonsumtif].
class RejectKonsumtifFamily extends Family<AsyncValue<Either<Failure, void>>> {
  /// See also [rejectKonsumtif].
  const RejectKonsumtifFamily();

  /// See also [rejectKonsumtif].
  RejectKonsumtifProvider call({
    required String idLoan,
    required String keterangan,
  }) {
    return RejectKonsumtifProvider(
      idLoan: idLoan,
      keterangan: keterangan,
    );
  }

  @override
  RejectKonsumtifProvider getProviderOverride(
    covariant RejectKonsumtifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
      keterangan: provider.keterangan,
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
  String? get name => r'rejectKonsumtifProvider';
}

/// See also [rejectKonsumtif].
class RejectKonsumtifProvider
    extends AutoDisposeFutureProvider<Either<Failure, void>> {
  /// See also [rejectKonsumtif].
  RejectKonsumtifProvider({
    required String idLoan,
    required String keterangan,
  }) : this._internal(
          (ref) => rejectKonsumtif(
            ref as RejectKonsumtifRef,
            idLoan: idLoan,
            keterangan: keterangan,
          ),
          from: rejectKonsumtifProvider,
          name: r'rejectKonsumtifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rejectKonsumtifHash,
          dependencies: RejectKonsumtifFamily._dependencies,
          allTransitiveDependencies:
              RejectKonsumtifFamily._allTransitiveDependencies,
          idLoan: idLoan,
          keterangan: keterangan,
        );

  RejectKonsumtifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.keterangan,
  }) : super.internal();

  final String idLoan;
  final String keterangan;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, void>> Function(RejectKonsumtifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RejectKonsumtifProvider._internal(
        (ref) => create(ref as RejectKonsumtifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        keterangan: keterangan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, void>> createElement() {
    return _RejectKonsumtifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RejectKonsumtifProvider &&
        other.idLoan == idLoan &&
        other.keterangan == keterangan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, keterangan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RejectKonsumtifRef
    on AutoDisposeFutureProviderRef<Either<Failure, void>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `keterangan` of this provider.
  String get keterangan;
}

class _RejectKonsumtifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, void>>
    with RejectKonsumtifRef {
  _RejectKonsumtifProviderElement(super.provider);

  @override
  String get idLoan => (origin as RejectKonsumtifProvider).idLoan;
  @override
  String get keterangan => (origin as RejectKonsumtifProvider).keterangan;
}

String _$rejectProduktifHash() => r'f8a90ebcf6064eb7a7fd47a80b923ff0bafd1978';

/// See also [rejectProduktif].
@ProviderFor(rejectProduktif)
const rejectProduktifProvider = RejectProduktifFamily();

/// See also [rejectProduktif].
class RejectProduktifFamily extends Family<AsyncValue<Either<Failure, void>>> {
  /// See also [rejectProduktif].
  const RejectProduktifFamily();

  /// See also [rejectProduktif].
  RejectProduktifProvider call({
    required String idLoan,
    required String keterangan,
  }) {
    return RejectProduktifProvider(
      idLoan: idLoan,
      keterangan: keterangan,
    );
  }

  @override
  RejectProduktifProvider getProviderOverride(
    covariant RejectProduktifProvider provider,
  ) {
    return call(
      idLoan: provider.idLoan,
      keterangan: provider.keterangan,
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
  String? get name => r'rejectProduktifProvider';
}

/// See also [rejectProduktif].
class RejectProduktifProvider
    extends AutoDisposeFutureProvider<Either<Failure, void>> {
  /// See also [rejectProduktif].
  RejectProduktifProvider({
    required String idLoan,
    required String keterangan,
  }) : this._internal(
          (ref) => rejectProduktif(
            ref as RejectProduktifRef,
            idLoan: idLoan,
            keterangan: keterangan,
          ),
          from: rejectProduktifProvider,
          name: r'rejectProduktifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rejectProduktifHash,
          dependencies: RejectProduktifFamily._dependencies,
          allTransitiveDependencies:
              RejectProduktifFamily._allTransitiveDependencies,
          idLoan: idLoan,
          keterangan: keterangan,
        );

  RejectProduktifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idLoan,
    required this.keterangan,
  }) : super.internal();

  final String idLoan;
  final String keterangan;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, void>> Function(RejectProduktifRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RejectProduktifProvider._internal(
        (ref) => create(ref as RejectProduktifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idLoan: idLoan,
        keterangan: keterangan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, void>> createElement() {
    return _RejectProduktifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RejectProduktifProvider &&
        other.idLoan == idLoan &&
        other.keterangan == keterangan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idLoan.hashCode);
    hash = _SystemHash.combine(hash, keterangan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RejectProduktifRef
    on AutoDisposeFutureProviderRef<Either<Failure, void>> {
  /// The parameter `idLoan` of this provider.
  String get idLoan;

  /// The parameter `keterangan` of this provider.
  String get keterangan;
}

class _RejectProduktifProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, void>>
    with RejectProduktifRef {
  _RejectProduktifProviderElement(super.provider);

  @override
  String get idLoan => (origin as RejectProduktifProvider).idLoan;
  @override
  String get keterangan => (origin as RejectProduktifProvider).keterangan;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
