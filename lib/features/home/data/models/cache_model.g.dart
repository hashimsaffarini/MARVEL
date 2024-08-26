// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CachedResultAdapter extends TypeAdapter<CachedResult> {
  @override
  final int typeId = 0;

  @override
  CachedResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CachedResult(
      id: fields[0] as int?,
      name: fields[1] as String?,
      description: fields[2] as String?,
      modified: fields[3] as String?,
      resourceURI: fields[4] as String?,
      thumbnail: fields[5] as CachedThumbnail?,
      comics: fields[6] as CachedComics?,
    );
  }

  @override
  void write(BinaryWriter writer, CachedResult obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.modified)
      ..writeByte(4)
      ..write(obj.resourceURI)
      ..writeByte(5)
      ..write(obj.thumbnail)
      ..writeByte(6)
      ..write(obj.comics);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CachedThumbnailAdapter extends TypeAdapter<CachedThumbnail> {
  @override
  final int typeId = 1;

  @override
  CachedThumbnail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CachedThumbnail(
      path: fields[0] as String?,
      extension: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CachedThumbnail obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.path)
      ..writeByte(1)
      ..write(obj.extension);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedThumbnailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CachedComicsAdapter extends TypeAdapter<CachedComics> {
  @override
  final int typeId = 2;

  @override
  CachedComics read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CachedComics(
      available: fields[0] as int?,
      returned: fields[1] as int?,
      collectionURI: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CachedComics obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.available)
      ..writeByte(1)
      ..write(obj.returned)
      ..writeByte(2)
      ..write(obj.collectionURI);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedComicsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
