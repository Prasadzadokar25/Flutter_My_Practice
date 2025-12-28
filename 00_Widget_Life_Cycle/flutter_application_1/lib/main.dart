import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DeactivateWidget());
  }
}

class DeactivateWidget extends StatefulWidget {
  @override
  State createState() {
    print("in create state");
    return _DeactivateWidgetState();
  }
}

class _DeactivateWidgetState extends State {
  bool flag = true;

  @override
  void deactivate() {
    super.deactivate();
    print("in deactive");
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("in setstate");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("in did chneg dependance");
  }

  @override
  void initState() {
    super.initState();
    print("in initState");
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("in didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    print("in build");
    return (flag)
        ? Scaffold(
            appBar: AppBar(
              title: Text(''),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text(
                    'Test 1',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        deactivate();
                        flag = !flag;
                      });
                    },
                    child: Text('Button'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  )
                ])))
        : Scaffold(
            appBar: AppBar(
              title: Text(''),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text(
                    'text 2',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        flag = !flag;
                      });
                    },
                    child: Text('Button2'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  )
                ])));
  }
}
