import 'package:get/instance_manager.dart';
import 'package:quran_va_tajvid/constants/categories_name.dart';

class HomeBindings extends Bindings {

  @override
  void dependencies() {
    Get.put(CategoriesName());
  }
}