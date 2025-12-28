import 'package:flutter/material.dart';
import 'package:flutter_application_4/Assignemnt3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment3(),
    );
  }
}
