// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_uio.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthorUioAdapter extends TypeAdapter<AuthorUio> {
  @override
  final int typeId = 3;

  @override
  AuthorUio read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthorUio(
      id: fields[0] as int?,
      name: fields[1] as String?,
      picture: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AuthorUio obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.picture);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorUioAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
