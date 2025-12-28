import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
      ),
      body: Center(
          child: Container(
        color: Colors.amber,
        height: Get.height * 0.5,
        width: Get.width * .5,
      )),
    );
  }
}
