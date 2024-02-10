// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserHiveEntityAdapter extends TypeAdapter<UserHiveEntity> {
  @override
  final int typeId = 0;

  @override
  UserHiveEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserHiveEntity(
      username: fields[0] as String?,
      name: fields[1] as String?,
      nik: fields[2] as String?,
      idRole: fields[3] as String?,
      role: fields[4] as String?,
      idCabang: fields[5] as String?,
      cabang: fields[6] as String?,
      token: fields[7] as String?,
      levelApproveCabang: fields[8] as String?,
      limitProduktifCabang: fields[9] as double?,
      limitKonsumtifCabang: fields[10] as double?,
      authorities: (fields[11] as List?)?.cast<String>(),
      authorizationType: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserHiveEntity obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.username)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.nik)
      ..writeByte(3)
      ..write(obj.idRole)
      ..writeByte(4)
      ..write(obj.role)
      ..writeByte(5)
      ..write(obj.idCabang)
      ..writeByte(6)
      ..write(obj.cabang)
      ..writeByte(7)
      ..write(obj.token)
      ..writeByte(8)
      ..write(obj.levelApproveCabang)
      ..writeByte(9)
      ..write(obj.limitProduktifCabang)
      ..writeByte(10)
      ..write(obj.limitKonsumtifCabang)
      ..writeByte(11)
      ..write(obj.authorities)
      ..writeByte(12)
      ..write(obj.authorizationType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserHiveEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
