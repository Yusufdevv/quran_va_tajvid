import 'dart:developer';

import 'package:get/get.dart';

class CategoryListController extends GetxController {
  var categoryIndex = (0.obs).toInt();

  void changeCategoryIndex(dynamic index) {
    categoryIndex = index;
    log("Controller $categoryIndex");
  }
}
