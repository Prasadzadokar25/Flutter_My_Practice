import 'dart:developer';

import 'package:flutter/material.dart';

import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class ModelData {
  int empId;
  String empName;
  int workExp;
  List sjills = [];

  ModelData(
      {required this.empId, required this.empName, required this.workExp});
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ModelData empData = ModelData(empId: 79, empName: "prasad", workExp: 1);

  @override
  Widget build(BuildContext context) {
    return EMPInheritedwidget(
      empData: empData,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}

class EMPInheritedwidget extends InheritedWidget {
  ModelData empData;
  EMPInheritedwidget({super.key, required super.child, required this.empData});

  @override
  bool updateShouldNotify(covariant EMPInheritedwidget oldWidget) {
    log("in change notifire");
    return empData != oldWidget.empData;
  }

  static EMPInheritedwidget of(context) {
    return context.dependOnInheritedWidgetOfExactType<EMPInheritedwidget>()!;
  }
}
