import "package:flutter/material.dart";

class Assignment7 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Assignment7"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration:
                BoxDecoration(border: Border.all(width: 5, color: Colors.red)),
            // color: Colors.blue,
          ),
        ));
  }
}
