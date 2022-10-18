// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlaylistAdapter extends TypeAdapter<Playlist> {
  @override
  final int typeId = 0;

  @override
  Playlist read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Playlist(
      title: fields[0] as String,
      imgPath: fields[1] as String,
      playlistId: fields[2] as String,
      count: fields[3] as int,
      cateogory: fields[4] as String,
      doc: fields[5] as String,
      isFavorite: fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Playlist obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.imgPath)
      ..writeByte(2)
      ..write(obj.playlistId)
      ..writeByte(3)
      ..write(obj.count)
      ..writeByte(4)
      ..write(obj.cateogory)
      ..writeByte(5)
      ..write(obj.doc)
      ..writeByte(6)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaylistAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PlaylistsAdapter extends TypeAdapter<Playlists> {
  @override
  final int typeId = 1;

  @override
  Playlists read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Playlists(
      category: fields[0] as String,
      playlist: (fields[1] as List).cast<Playlist>(),
    );
  }

  @override
  void write(BinaryWriter writer, Playlists obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.category)
      ..writeByte(1)
      ..write(obj.playlist);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaylistsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
