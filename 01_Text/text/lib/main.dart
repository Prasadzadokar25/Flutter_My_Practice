// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("my app"),
          backgroundColor: const Color.fromARGB(255, 246, 16, 0),
        ),
        body: const Center(
          child: Text('Prasad zaokar'),
        ),
      ),
    );
  }
}
