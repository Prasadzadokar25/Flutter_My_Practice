import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Axis Aligment',
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Axis Aligmney"),
              backgroundColor: Colors.deepPurple,
            ),
            body: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ],
              )
            ])));
  }
}
