import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int? selectedIndex = 0;

  List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOK-ow0qBdBPocVwqWn41n14dzIdloAjFpin68eTHqfOtRLmCEKLJhwTuJh8f7uksCZKU&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqg3wvFEVuRhtMgfNTrSrBFc41ScIavU4IOkF4v4aBjrjkNOpalzaawl994umfQ3NqQBw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbUTRsyG8r9-XJVrWgPHfOIaVbTqOXfgX6l9zSvCDwsB3tQjkag4kddoMfXi9djYuMN4I&usqp=CAU"
  ];

  void showNextImage() {
    setState(() {
      selectedIndex = selectedIndex! + 1;

      if (selectedIndex! >= imageList.length) {
        selectedIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image app")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
            imageList[selectedIndex!],
            height: 300,
            width: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: showNextImage, child: const Text("Next Image")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    selectedIndex = 0;
                  },
                );
              },
              child: const Text("Reset image")),
        ]),
      ),
    );
  }
}
