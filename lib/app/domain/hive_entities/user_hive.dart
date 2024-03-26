import 'package:hive/hive.dart';

part 'user_hive.g.dart';

@HiveType(typeId: 0)
class UserHiveEntity extends HiveObject {
  UserHiveEntity({
    this.username,
    this.name,
    this.nik,
    this.idRole,
    this.role,
    this.idCabang,
    this.cabang,
    this.token,
    this.levelApproveCabang,
    this.limitProduktifCabang,
    this.limitKonsumtifCabang,
    this.authorities,
    this.authorizationType,
    this.permissions,
  });

  @HiveField(0)
  final String? username;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? nik;
  @HiveField(3)
  final String? idRole;
  @HiveField(4)
  final String? role;
  @HiveField(5)
  final String? idCabang;
  @HiveField(6)
  final String? cabang;
  @HiveField(7)
  final String? token;
  @HiveField(8)
  final String? levelApproveCabang;
  @HiveField(9)
  final double? limitProduktifCabang;
  @HiveField(10)
  final double? limitKonsumtifCabang;
  @HiveField(11)
  final List<String>? authorities;
  @HiveField(12)
  final String? authorizationType;
  @HiveField(13)
  final List<String>? permissions;
}
