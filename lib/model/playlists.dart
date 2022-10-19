import 'package:hive/hive.dart';

part 'playlists.g.dart';
// flutter pub run build_runner build

@HiveType(typeId: 0)
class Playlist extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String imgPath;
  @HiveField(2)
  String playlistId;
  @HiveField(3)
  int count;
  @HiveField(4)
  String cateogory;
  @HiveField(5)
  String doc;
  @HiveField(6)
  bool isFavorite;

  Playlist({
    required this.title,
    required this.imgPath,
    required this.playlistId,
    required this.count,
    required this.cateogory,
    required this.doc,
    this.isFavorite = false,
  });
}

@HiveType(typeId: 1)
class Playlists extends HiveObject{
  @HiveField(0)
  String category;
  @HiveField(1)
  List<Playlist> playlist;

  Playlists({
    required this.category,
    required this.playlist,
  });
}


