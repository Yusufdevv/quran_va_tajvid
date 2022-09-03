import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_va_tajvid/logic/controllers/category_list_controller.dart';
import 'package:quran_va_tajvid/presentation/screens/video_list_screen.dart';

class GridViewWidget extends StatelessWidget {
  final bool favorites;

  GridViewWidget({required this.favorites, Key? key}) : super(key: key);

  final cont = Get.put(CategoryListController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryListController>(builder: (cont) {
      final list = favorites
          ? cont.favoritesList[cont.favoriteCatIndex]
          : cont.mainUiDatas[cont.categoryIndex];
      return list.mainUi.isNotEmpty
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
              ),
              itemCount: list.mainUi.length,
              itemBuilder: (ctx, i) {
                final gridCategory = list.mainUi[i];
                return GestureDetector(
                  onTap: () => Get.to(
                    () => VideoListScreen(
                        playListId: gridCategory.playlistId,
                        appBarTitle: gridCategory.title,
                        maxResults: gridCategory.count),
                  ),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            alignment: Alignment.center,
                            width: double.infinity,
                            child: Text(
                              gridCategory.title,
                              style: const TextStyle(fontSize: 20),
                              maxLines: 1,
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1.3,
                          child: Image.asset(
                            gridCategory.imgPath,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  child: Text(
                                    'Manba : https://www.youtube.com/playlist?list=${gridCategory.playlistId}',
                                    style: const TextStyle(fontSize: 20),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    cont.toggleFavorite(
                                        gridCategory.playlistId);
                                  },
                                  icon: const Icon(
                                      Icons.favorite_outline_outlined))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
          : const Center(
              child: Text(
                "Playslistlar mavjud emas",
                style: TextStyle(fontSize: 20),
              ),
            );
    });
  }
}
