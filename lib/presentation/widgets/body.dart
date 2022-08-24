import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/categories_name.dart';
import '../widgets/categories_name_list.dart';
import '../widgets/gridview_widget.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);

  final catogeriesName = Get.put(CategoriesName());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesNameList(catogeriesName: catogeriesName),
          const Expanded(
            child: GridViewWidget(),
          )
        ],
      ),
    );
  }
}
