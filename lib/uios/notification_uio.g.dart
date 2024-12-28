// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_uio.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotificationUioAdapter extends TypeAdapter<NotificationUio> {
  @override
  final int typeId = 4;

  @override
  NotificationUio read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NotificationUio(
      title: fields[0] as String?,
      description: fields[1] as String?,
      read: fields[2] as bool?,
      addedAt: fields[3] as DateTime?,
      postId: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, NotificationUio obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.read)
      ..writeByte(3)
      ..write(obj.addedAt)
      ..writeByte(4)
      ..write(obj.postId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationUioAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
