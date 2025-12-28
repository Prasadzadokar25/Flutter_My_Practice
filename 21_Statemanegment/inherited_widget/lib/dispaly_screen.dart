import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inherited_widget/main.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  State createState() => _DisplayState();
}

class _DisplayState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Display"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " Employe Id : ${EMPInheritedwidget.of(context).empData.empId}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              " Employe Name :${EMPInheritedwidget.of(context).empData.empName}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Work Exprence:${EMPInheritedwidget.of(context).empData.workExp}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Skills();
                  }));
                },
                child: const Text(" skills"))
          ],
        ),
      ),
    );
  }
}

class Skills extends StatefulWidget {
  State createState() => _SkillsState();
}

class _SkillsState extends State {
  TextEditingController skillController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Skills"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          TextField(
            controller: skillController,
            decoration: InputDecoration(label: Text("Skill title")),
          ),
          ElevatedButton(
              onPressed: () {
                EMPInheritedwidget.of(context)
                    .empData
                    .sjills
                    .add(skillController.text.trim());
                setState(() {});
              },
              child: Text("add Skill")),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: EMPInheritedwidget.of(context).empData.sjills.length,
              itemBuilder: (context, index) {
                return Container(
                    child: Row(
                  children: [
                    Text(EMPInheritedwidget.of(context).empData.sjills[index])
                  ],
                ));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
