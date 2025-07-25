// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zeker_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ZekerModelAdapter extends TypeAdapter<ZekerModel> {
  @override
  final int typeId = 0;

  @override
  ZekerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ZekerModel(
      zekerText: fields[0] as String,
      repratedTime: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ZekerModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.zekerText)
      ..writeByte(1)
      ..write(obj.repratedTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ZekerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
