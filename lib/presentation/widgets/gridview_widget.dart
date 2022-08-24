import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_va_tajvid/presentation/screens/video_list_screen.dart';
import '../../constants/main_ui_datas.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  final listImages = Get.put(ListImages()).mainUiDatas;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 1),
        itemCount: listImages.length,
        itemBuilder: (ctx, i) {
          var listImagesItem = listImages[i]['$i'];
          return GestureDetector(
            onTap: () => Get.to(() => VideoListScreen(
                playListId: listImagesItem[2],
                appBarTitle: listImagesItem[0],
                maxResults: listImagesItem[3])),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.grey[200],
                    alignment: Alignment.center,
                    height: 60,
                    width: double.infinity,
                    child: Text(
                      listImagesItem[0],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  GridTile(
                    child: AspectRatio(
                      aspectRatio: 1.2,
                      child: Image.asset(
                        listImagesItem[1],
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
