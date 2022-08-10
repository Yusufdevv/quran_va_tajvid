import 'package:flutter/material.dart';

import '../constants/categories_name.dart';

class CategoriesNameList extends StatefulWidget {
  const CategoriesNameList({
    Key? key,
    required this.catogeriesName,
  }) : super(key: key);
  final CategoriesName catogeriesName;

  @override
  State<CategoriesNameList> createState() => _CategoriesNameListState();
}

class _CategoriesNameListState extends State<CategoriesNameList> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.catogeriesName.list.length,
        itemBuilder: (ctx, i) => Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = i;
                  });
                },
                child: Text(
                  widget.catogeriesName.list[i],
                  style:  TextStyle(
                      fontSize: 20,
                      color: selectedIndex == i ?Colors.black54 : Colors.black26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              
              Container(
                margin: const EdgeInsets.only(top: 5),
                height: 3,
                width: 30,
                color:selectedIndex == i ? Colors.black : Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}