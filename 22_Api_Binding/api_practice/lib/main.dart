import "dart:convert";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List classes = [];
  MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: FutureBuilder(
        future: getClasses(),
        builder: (context, snapshort) {
          return ListView.builder(
              itemCount: classes.length,
              itemBuilder: (context, index) {
                return Text(classes[index]["class_name"]);
              });
        },
      ),
    ));
  }

  Future<bool> getClasses() async {
    final responce = await http.post(
      Uri.parse("http://prasad25.pythonanywhere.com/classes"),
      headers: <String, String>{
        "content-type": "application/json",
      },
      body: jsonEncode(
        <String, dynamic>{"username": "prasad"},
      ),
    );

    if (responce.statusCode == 200) {
      classes = jsonDecode(responce.body);
    } else {
      print("failed to load classes");
    }
    return classes.isNotEmpty;
  }
}
