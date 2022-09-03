import 'package:get/get.dart';
import 'package:quran_va_tajvid/app_routes/app_keys.dart';
import 'package:quran_va_tajvid/logic/bindings/home_binding.dart';
import 'package:quran_va_tajvid/logic/bindings/splash_binding.dart';
import 'package:quran_va_tajvid/presentation/screens/home_screen.dart';
import 'package:quran_va_tajvid/presentation/screens/splash_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.initial,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: Routes.home,
        page: () => const HomeScreen(),
        binding: HomeBinding())
  ];
}
