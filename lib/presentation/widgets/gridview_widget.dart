import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_va_tajvid/logic/controllers/category_list_controller.dart';
import 'package:quran_va_tajvid/presentation/screens/video_list_screen.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({Key? key}) : super(key: key);

  final cont = Get.put(CategoryListController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryListController>(builder: (cont) {
      return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 1,
          ),
          itemCount: cont.mainUiData[cont.categoryIndex].length,
          itemBuilder: (ctx, i) {
            final gridCategory = cont.mainUiData[cont.categoryIndex][i];
            return GestureDetector(
              onTap: () => Get.to(() => VideoListScreen(
                  playListId: gridCategory[2],
                  appBarTitle: gridCategory[0],
                  maxResults: gridCategory[3])),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.grey[200],
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          gridCategory[0],
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    GridTile(
                      child: AspectRatio(
                        aspectRatio: 1.2,
                        child: Image.asset(
                          gridCategory[1],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    });
  }
}
