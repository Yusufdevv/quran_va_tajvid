import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/presentation/widgets/app_drawer.dart';
import 'package:quran_va_tajvid/presentation/widgets/categories_name_list.dart';
import 'package:quran_va_tajvid/presentation/widgets/gridview_widget.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 253, 244),
      appBar: AppBar(
        title: const Text('Sevimlilar'),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoriesNameList(
              favorites: true,
            ),
            Expanded(
              child: GridViewWidget(
                favorites: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
