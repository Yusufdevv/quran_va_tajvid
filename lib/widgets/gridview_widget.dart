import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_va_tajvid/constants/list_images.dart';
import 'package:quran_va_tajvid/screens/videoslist_screen.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({Key? key}) : super(key: key);

  final listImages = Get.put(ListImages());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 1),
        itemCount: listImages.listImages.length,
        itemBuilder: (ctx, i) {
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  VideosListScreen(listImages.listImages[i]),)),
            child: Card(
              child: GridTile(
                child: AspectRatio(
                  aspectRatio: 0.8,
                  child: Image.asset(
                    listImages.listImages[i],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
