import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
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
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 360,
              height: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 360,
              height: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 360,
              height: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 360,
              height: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 360,
              height: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 360,
              height: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 360,
              height: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ))));
  }
}
