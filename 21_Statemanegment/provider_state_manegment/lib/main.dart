import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class ModelData {
  int id;
  String name;

  ModelData({required this.id, required this.name});

  static ModelData of(context) {
    return Provider.of<ModelData>(context);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => ModelData(id: 2, name: "prasad"),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<ModelData>(context).name),
            const SizedBox(
              height: 10,
            ),
            Text("${Provider.of<ModelData>(context).id}"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ModelData>(context, listen: false).id++;
              },
              child: const Text("Change"),
            )
          ],
        ),
      ),
    );
  }
}
