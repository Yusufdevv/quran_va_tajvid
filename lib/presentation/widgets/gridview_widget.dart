import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_va_tajvid/logic/controllers/controller.dart';
import 'package:quran_va_tajvid/presentation/screens/video_list_screen.dart';
import '../../constants/main_ui_datas.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  final mainUiDatas = Get.put(MainUiDatas()).mainUiDatas;
  final categoryListController = Get.find<CategoryListController>();

  @override
  Widget build(BuildContext context) {
    log("Grid ${categoryListController.categoryIndex}");

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 1,
        ),
        itemCount: mainUiDatas[categoryListController.categoryIndex].length,
        itemBuilder: (ctx, i) {
          log("mainUiDatas[categoryListController.categoryIndex] ${mainUiDatas[categoryListController.categoryIndex]}");
          var categoryItemList =
              mainUiDatas[categoryListController.categoryIndex][i];
          return GestureDetector(
            onTap: () => Get.to(() => VideoListScreen(
                playListId: categoryItemList[2],
                appBarTitle: categoryItemList[0],
                maxResults: categoryItemList[3])),
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
                        categoryItemList[0],
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  GridTile(
                    child: AspectRatio(
                      aspectRatio: 1.2,
                      child: Image.asset(
                        categoryItemList[1],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
