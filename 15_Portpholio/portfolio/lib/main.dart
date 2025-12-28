import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "folio",
      home: PortFoliy(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortFoliy extends StatefulWidget {
  const PortFoliy({super.key});
  @override
  State createState() => _PortFoliyState();
}

class _PortFoliyState extends State {
  int index = 0;
  List<String> name = ["Prasad zadokar", "Srushti Dadas"];
  List image = ["assets/images/prasad.jpg", "assets/images/srush.jpg"];
  List collageName = ["Sinhgad", "Singad"];
  List collageLogo = ["assets/images/sits.jpeg", "assets/images/sits.jpeg"];
  List companyName = [" PP identity", "Google"];
  List companyLogo = [
    "assets/images/companypp.jpeg",
    "assets/images/google.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Portfolio",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name : ${name[index]}",
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              image[index],
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Collage Name : ${collageName[index]}",
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset(
              collageLogo[index],
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Collage Name : ${companyName[index]}",
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset(
              companyLogo[index],
              height: 150,
              width: 150,
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              index++;
              if (index >= name.length) {
                index = 0;
              }
            });
          },
          child: const Text("Next"),
        ));
  }
}
