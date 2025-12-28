import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  Widget build(BuildContext contex) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Assignment4"),
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/images/Atom.png",
              height: 150,
              width: 150,
            ),
            Image.asset(
              "assets/images/Chem2.jpg",
              height: 150,
              width: 150,
            ),
            Image.asset(
              "assets/images/Atom.png",
              height: 150,
              width: 150,
            ),
          ]),
        ));
  }
}
