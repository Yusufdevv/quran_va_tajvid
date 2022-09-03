import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 253, 244),
      appBar: AppBar(
        title: const Text('Sozlamalar'),
      ),
      body: const Center(
        child: Text('Tez orada'),
      ),
    );
  }
}
