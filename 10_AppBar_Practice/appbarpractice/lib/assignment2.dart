import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assignment2"),
        backgroundColor: Colors.red,
        actions: [
          Icon(Icons.favorite_sharp),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
