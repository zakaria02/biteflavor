// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_uio.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryUioAdapter extends TypeAdapter<CategoryUio> {
  @override
  final int typeId = 2;

  @override
  CategoryUio read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryUio(
      id: fields[0] as int?,
      name: fields[1] as String?,
      parent: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryUio obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.parent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryUioAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
