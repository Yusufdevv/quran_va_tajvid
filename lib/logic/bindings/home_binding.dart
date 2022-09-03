import 'package:get/get.dart';
import 'package:quran_va_tajvid/logic/controllers/category_list_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryListController>(() => CategoryListController(),
        fenix: true);
  }
}
