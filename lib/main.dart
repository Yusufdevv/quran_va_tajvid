import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_va_tajvid/app_routes/app_pages.dart';
import 'package:quran_va_tajvid/logic/bindings/splash_binding.dart';
import 'package:quran_va_tajvid/presentation/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green
          // primaryColor:const Color.fromARGB(255, 87, 176, 9)
          ),
      title: 'Qur\'an va tajvid',
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
      home: const SplashScreen(),
    );
  }
}
