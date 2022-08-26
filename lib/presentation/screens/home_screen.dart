import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/presentation/screens/favorites_screen.dart';
import 'package:quran_va_tajvid/presentation/screens/settings_screen.dart';
import '../widgets/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<Widget> _bodies = [
  const Body(),
  const FavoritesScreen(),
  const SettingsScreen()
];

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodies[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: (index) => setState(() => selectedIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Bosh sahifa"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Sevimlilar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Sozlamalar'),
          ]),
    );
  }
}
