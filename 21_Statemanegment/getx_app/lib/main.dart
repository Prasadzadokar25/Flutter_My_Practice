import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext constex) {
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
