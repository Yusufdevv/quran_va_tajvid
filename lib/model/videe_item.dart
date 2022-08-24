class ItemVideo {
  final String videoId;
  final String videoImageurl;
  final String videoTitle;

  ItemVideo({
    required this.videoId,
    required this.videoImageurl,
    required this.videoTitle,
  });

  factory ItemVideo.fromJson(Map<String, dynamic> json) => ItemVideo(
      videoId: json["videoId"],
      videoImageurl: json["videoImageurl"],
      videoTitle: json["videoTitle"]);
}

class VideosList {
  final List<ItemVideo> videosList;
  VideosList({
    required this.videosList,
  });

  factory VideosList.fromJson(List<dynamic> json) {
    var list = json.map((e) => ItemVideo.fromJson(e)).toList();

    return VideosList(videosList: list);
  }
}
