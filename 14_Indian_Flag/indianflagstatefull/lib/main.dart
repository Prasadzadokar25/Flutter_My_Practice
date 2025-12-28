import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Flag(),
    );
  }
}

class Flag extends StatefulWidget {
  const Flag({super.key});
  State createState() => _FlagState();
}

class _FlagState extends State {
  int counter = 0;

  Widget getContaner(double width, double height, Color color,
      {final Widget child = const SizedBox()}) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: child,
    );
  }

  Widget build(BuildContext content) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Happy Republic day"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Icon(Icons.add)),
        body: Center(
            child: Column(
          children: [
            getContaner(0, 130, Colors.white),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (counter > 0)
                      ? getContaner(10, 400, Colors.brown)
                      : Container(),
                  Column(
                    children: [
                      (counter > 1)
                          ? getContaner(200, 50, Colors.orange)
                          : Container(),
                      (counter > 2)
                          ? getContaner(200, 50, Colors.white,
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0IDbQjkNzIAZA-aW0rpij4F7FhMYtv_N5Xot72PLQjDSK2DIw08c5ZIkVcDr2cVf06sU&usqp=CAU"))
                          : Container(),
                      (counter > 4)
                          ? getContaner(200, 50, Colors.green)
                          : Container(),
                    ],
                  )
                ]),
          ],
        )));
  }
}
