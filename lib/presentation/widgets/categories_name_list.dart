import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_va_tajvid/logic/controllers/category_list_controller.dart';

class CategoriesNameList extends StatelessWidget {
  final bool favorites;

  const CategoriesNameList({
    required this.favorites,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryListController>(builder: (cont) {
      return SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cont.categoryList.length,
          itemBuilder: (ctx, i) => Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    favorites
                        ? cont.changefavoriteCatIndex(i)
                        : cont.changeCategoryIndex(i);
                  },
                  child: Text(
                    cont.categoryList[i],
                    style: TextStyle(
                        fontSize: 24,
                        color: favorites
                            ? changeColor(cont.favoriteCatIndex, i, true)
                            : changeColor(cont.categoryIndex, i, true),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 3,
                  width: 30,
                  color: favorites
                      ? changeColor(cont.favoriteCatIndex, i, false)
                      : changeColor(cont.categoryIndex, i, false),
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  Color changeColor(int contIndex, int index, bool text) {
    if (text) {
      return contIndex == index ? Colors.black : Colors.black26;
    } else {
      return contIndex == index ? Colors.black : Colors.transparent;
    }
  }
}
