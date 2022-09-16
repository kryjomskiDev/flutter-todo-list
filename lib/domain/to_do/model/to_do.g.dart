// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ToDoAdapter extends TypeAdapter<ToDo> {
  @override
  final int typeId = 0;

  @override
  ToDo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ToDo(
      id: fields[0] as String,
      title: fields[1] as String,
      isCompleted: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ToDo obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.isCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ToDoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
