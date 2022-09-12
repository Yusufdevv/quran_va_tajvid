import 'package:flutter/material.dart';

import '../widgets/categories_name_list.dart';
import '../widgets/gridview_widget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 253, 244),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Image.asset('assets/images/quranvatajvid.png'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.mail))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoriesNameList(
              favorites: false,
            ),
            Expanded(
              child: GridViewWidget(
                isFavorites: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
