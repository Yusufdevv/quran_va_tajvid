import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Image.asset('assets/images/quranvatajvid.png'))
        ],
      ),
    );
  }
}
