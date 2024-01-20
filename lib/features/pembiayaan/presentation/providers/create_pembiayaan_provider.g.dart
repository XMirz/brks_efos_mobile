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
String _$fetchPembiayaanHash() => r'c0350f5e4e616f0f40b28f6385c1a08d9f479ce4';

/// See also [fetchPembiayaan].
@ProviderFor(fetchPembiayaan)
final fetchPembiayaanProvider =
    FutureProvider<Either<Failure, AppParameter>>.internal(
  fetchPembiayaan,
  name: r'fetchPembiayaanProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchPembiayaanHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchPembiayaanRef = FutureProviderRef<Either<Failure, AppParameter>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
