import 'package:flutter/material.dart';

import '../widgets/categories_name_list.dart';
import '../widgets/gridview_widget.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CategoriesNameList(),
          Expanded(
            child: GridViewWidget(),
          )
        ],
      ),
    );
  }
}
