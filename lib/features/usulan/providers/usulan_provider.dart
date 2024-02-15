import 'package:efosm/features/usulan/data/repositories/usulan_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usulan_provider.g.dart';

@Riverpod(keepAlive: true)
UsulanRepository usulanRepository(UsulanRepositoryRef ref) => UsulanRepository();
