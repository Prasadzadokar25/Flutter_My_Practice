import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Assignment3"),
          backgroundColor: Colors.deepPurple,
          actions: [
            Icon(Icons.favorite_sharp),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.menu),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7EvAuO4nM8yDudJsuHDzGrCqB6N_lMWzlSA&usqp=CAU",
              width: 360,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZnJo1VSkgDGn7_qGHiBk1Sf3cRGqDjHnNbQ&usqp=CAU",
              width: 360,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD7ovgIf7erIpyxUJYdeY2TwZXzqVN8wEgDg&usqp=CAU",
              width: 360,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2H_KNoUcJRz8u-0YEyF87geQeXIP42PcqJA&usqp=CAU",
              width: 360,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7EvAuO4nM8yDudJsuHDzGrCqB6N_lMWzlSA&usqp=CAU",
              width: 360,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7EvAuO4nM8yDudJsuHDzGrCqB6N_lMWzlSA&usqp=CAU",
              width: 360,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7EvAuO4nM8yDudJsuHDzGrCqB6N_lMWzlSA&usqp=CAU",
              width: 360,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ))));
  }
}
