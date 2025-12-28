import 'package:flutter/material.dart';
import 'package:inherited_widget/dispaly_screen.dart';
import 'package:inherited_widget/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  State createState() => _LoginState();
}

class _LoginState extends State {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController workExpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: idController,
                decoration: const InputDecoration(labelText: "Employe id"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Employe Name"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: workExpController,
                decoration: const InputDecoration(labelText: "work exprence"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    int empId = int.parse(idController.text);
                    String empName = nameController.text;
                    int workExp = int.parse(workExpController.text);

                    ModelData empData = ModelData(
                        empId: empId, empName: empName, workExp: workExp);
                    EMPInheritedwidget.of(context).empData = empData;

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DisplayPage();
                    }));
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
