import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_va_tajvid/logic/controllers/category_list_controller.dart';
import 'package:quran_va_tajvid/model/playlists.dart';
import 'package:quran_va_tajvid/presentation/screens/video_list_screen.dart';

class GridViewWidget extends StatelessWidget {
  final bool isFavorites;

  GridViewWidget({required this.isFavorites, Key? key}) : super(key: key);

  final cont = Get.put(CategoryListController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryListController>(builder: (cont) {
      final list = isFavorites
          ? cont.playlistsList[cont.favoriteCatIndex]
          : cont.playlistsList[cont.categoryIndex];
      return list.playlist.isNotEmpty
          ? GridViewBuilder(
              list: list,
              favorites: isFavorites,
              toggleFavorite: cont.toggleFavorite,
            )
          : const Center(
              child: Text(
                "Playslistlar mavjud emas",
                style: TextStyle(fontSize: 20),
              ),
            );
    });
  }
}

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder(
      {Key? key,
      required this.list,
      required this.favorites,
      required this.toggleFavorite})
      : super(key: key);

  final Playlists list;
  final bool favorites;
  final Function toggleFavorite;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
        ),
        itemCount: list.playlist.length,
        itemBuilder: (ctx, i) {
          final playlistItem = list.playlist[i];
          return GestureDetector(
            onTap: () => Get.to(
              () => VideoListScreen(
                  playListId: playlistItem.playlistId,
                  appBarTitle: playlistItem.title,
                  maxResults: playlistItem.count),
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
                        playlistItem.title,
                        style: const TextStyle(fontSize: 20),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 1.3,
                    child: Image.asset(
                      playlistItem.imgPath,
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
                              'Manba : https://www.youtube.com/playlist?list=${playlistItem.playlistId}',
                              style: const TextStyle(fontSize: 20),
                              maxLines: 1,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            toggleFavorite(playlistItem, favorites);
                          },
                          icon: const Icon(Icons.favorite_outline),
                          color: playlistItem.isFavorite
                              ? Colors.red
                              : Colors.black,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
