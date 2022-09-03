import 'package:get/get.dart';
import 'package:quran_va_tajvid/presentation/screens/home_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(milliseconds: 1500));
    Get.off(() => const HomeScreen());
  }
}
