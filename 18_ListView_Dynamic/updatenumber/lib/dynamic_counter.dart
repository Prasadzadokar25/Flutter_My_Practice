import 'package:flutter/material.dart';

class DynamicCounter extends StatefulWidget {
  const DynamicCounter({super.key});

  @override
  State createState() => _DynamicCounterState();
}

class _DynamicCounterState extends State {
  List number = [0];
  int num = 1;

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic List View"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 200,
                  height: 40,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  color: Colors.amber.shade300,
                  child: Text("${number[index]}"),
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              number.add(num++);
            });
          }),
    );
  }
}
