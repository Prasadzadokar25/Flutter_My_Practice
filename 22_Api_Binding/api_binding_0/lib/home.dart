import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HOmeState();
}

class _HOmeState extends State<Home> {
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Api Binding",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchdata,
        child: const Icon(Icons.get_app),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Row(
                children: [
                  Text(data[index]["employee_name"]),
                  const Spacer(),
                  Text("${data[index]["employee_salary"]}")
                ],
              ),
            );
          }),
    );
  }

  void fetchdata() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    http.Response response = await http.get(url);
    var responseData = json.decode(response.body);

    setState(() {
      data = responseData['data'];
    });
  }
}
