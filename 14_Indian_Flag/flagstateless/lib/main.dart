import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Happy Independance Day",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
              ),
              centerTitle: true,
              backgroundColor: Colors.amber,
            ),
            body: Center(
              child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 193, 109, 6),
                      Color.fromARGB(255, 233, 108, 5),
                      Color.fromARGB(255, 250, 250, 249),
                      Color.fromARGB(255, 86, 100, 226),
                      Color.fromARGB(255, 250, 250, 249),
                      Color.fromARGB(255, 40, 212, 60),
                      Color.fromARGB(255, 6, 95, 17)
                    ],
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 130,
                              ),
                              Container(
                                height: 380,
                                width: 10,
                                color: const Color.fromARGB(255, 42, 32, 32),
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 190,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 190,
                                    color: Colors.orange.shade800,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 190,
                                    color: Colors.white,
                                    child: Image.network(
                                        "https://www.shutterstock.com/image-vector/blue-ashoka-wheel-indian-symbol-600nw-417259699.jpg"),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 190,
                                    color: Colors.green,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 0,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 140,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 190,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 240,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 50,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            )));
  }
}
