import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment1"),
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
