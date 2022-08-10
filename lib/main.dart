import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        primarySwatch: Colors.green
        // primaryColor:const Color.fromARGB(255, 87, 176, 9)
      ),
      title: 'Qur\'an va tajvid',
      home: const HomeScreen(),
    );
  }
}

