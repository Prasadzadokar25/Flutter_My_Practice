import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const ContainerDecoration(),
    );
  }
}

class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: const Text(
            "Contaner Decoration",
            style: TextStyle(fontSize: 23),
          ),
          centerTitle: true,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
              ),


              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(color: Colors.black, width: 10),
                    gradient: const LinearGradient(
                        stops: [0.4, 0.6],
                        colors: [Colors.orange, Colors.green]
                    )
                ),
              ),


            ]));
  }
}
