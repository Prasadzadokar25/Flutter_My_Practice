import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool box1color = false;
  bool box2color = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Color Boxes")),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      color: box1color ? Colors.purple : Colors.black),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box1color = !box1color;
                        });
                      },
                      child: const Text("Box1 Color"))
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box2color ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box2color = !box2color;
                        });
                      },
                      child: const Text("Box2 Color"))
                ],
              )
            ],
          )
        ]));
  }
}
