import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  State<Assignment1> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment1> {
  int? _count = 0;

  void _printTable() {
    setState(() {
      _count = _count! + 2;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Table of Two"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("click to print table of two"),
            const SizedBox(
              height: 20,
            ),
            Text("$_count"),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: _printTable, child: const Text("Click me")),
          ],
        )));
  }
}
