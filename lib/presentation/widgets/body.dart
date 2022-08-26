import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/presentation/widgets/app_drawer.dart';

import '../widgets/categories_name_list.dart';
import '../widgets/gridview_widget.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Image.asset('assets/images/quranvatajvid.png'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.mail))],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoriesNameList(),
            Expanded(
              child: GridViewWidget(),
            )
          ],
        ),
      ),
    );
  }
}
