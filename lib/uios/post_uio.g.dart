// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_uio.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostUioAdapter extends TypeAdapter<PostUio> {
  @override
  final int typeId = 1;

  @override
  PostUio read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostUio(
      id: fields[0] as int?,
      title: fields[1] as String?,
      htmlContent: fields[2] as String?,
      categories: (fields[3] as List?)?.cast<CategoryUio>(),
      picture: fields[4] as String?,
      date: fields[5] as DateTime?,
      author: fields[6] as AuthorUio?,
      link: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PostUio obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.htmlContent)
      ..writeByte(3)
      ..write(obj.categories)
      ..writeByte(4)
      ..write(obj.picture)
      ..writeByte(5)
      ..write(obj.date)
      ..writeByte(6)
      ..write(obj.author)
      ..writeByte(7)
      ..write(obj.link);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostUioAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
