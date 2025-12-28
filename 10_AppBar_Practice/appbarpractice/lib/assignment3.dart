import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Assignment3"),
          backgroundColor: Colors.deepPurple,
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
        body: Center(
          child: Container(
            width: 360,
            height: 200,
            color: Colors.blue,
          ),
        ));
  }
}
