import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_va_tajvid/logic/controllers/controller.dart';
import '../../constants/categories_name.dart';

class CategoriesNameList extends StatefulWidget {
  const CategoriesNameList({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesNameList> createState() => _CategoriesNameListState();
}

class _CategoriesNameListState extends State<CategoriesNameList> {
  final catogeriesName = Get.put(CategoriesName());

  final categoryListController =
      Get.put<CategoryListController>(CategoryListController());

  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    log("_categoryListController.categoryIndex ${categoryListController.categoryIndex}");
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catogeriesName.list.length,
        itemBuilder: (ctx, i) => Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = i;
                    });
                    categoryListController.changeCategoryIndex(i);
                  },
                  child: Text(
                    catogeriesName.list[i],
                    style: TextStyle(
                        fontSize: 24,
                        color:
                            selectedIndex == i ? Colors.black : Colors.black26,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 5),
                height: 3,
                width: 30,
                color: selectedIndex == i ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
