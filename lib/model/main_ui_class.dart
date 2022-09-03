class MainUi {
  String title;
  String imgPath;
  String playlistId;
  int count;
  String collection;
  String doc;
  bool isFavorite = false;

  MainUi(
      {required this.title,
      required this.imgPath,
      required this.playlistId,
      required this.count,
      required this.collection,
      required this.doc,
      this.isFavorite = false});
}

class MainUiData {
  String category;
  List<MainUi> mainUi;

  MainUiData({
    required this.category,
    required this.mainUi,
  });
}
