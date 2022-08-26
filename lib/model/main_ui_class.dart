class MainUi {
  String title;
  String imgPath;
  String token;
  int count;
  String type;
  String author;

  MainUi(
      {required this.title,
      required this.imgPath,
      required this.token,
      required this.count,
      required this.type,
      required this.author});
}

class MainUiData {
  String category;
  List<MainUi> mainUi;

  MainUiData({
    required this.category,
    required this.mainUi,
  });
}
