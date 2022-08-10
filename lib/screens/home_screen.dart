import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/widgets/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Image.asset('assets/images/quranvatajvid.png'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.mail))],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/quranvatajvid.png'))
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: selectedIndex,
          onTap: (index) => setState(() => selectedIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Bosh sahifa"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Sevimlilar'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Qidiruv'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Sozlamalar'),
          ]),
    );
  }
}
