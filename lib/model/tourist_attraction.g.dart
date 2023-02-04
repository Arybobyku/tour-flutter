// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourist_attraction.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TouristAttractionAdapter extends TypeAdapter<TouristAttraction> {
  @override
  final int typeId = 0;

  @override
  TouristAttraction read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TouristAttraction(
      name: fields[0] as String,
      description: fields[5] as String,
      image: fields[1] as String,
      title: fields[2] as String,
      pdfPath: fields[3] as String?,
      imageKomik: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TouristAttraction obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.pdfPath)
      ..writeByte(4)
      ..write(obj.imageKomik)
      ..writeByte(5)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TouristAttractionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
