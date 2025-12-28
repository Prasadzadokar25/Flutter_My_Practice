import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screen1.dart';

import 'screen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx learning"),
        //backgroundColor: const Color.fromARGB(255, 80, 176, 255),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Get.snackbar("Notification", "You order is conform",
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.amber,
              icon: const Icon(Icons.add),
              mainButton: TextButton(
                onPressed: () {},
                child: const Text("open"),
              ));
        },
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("Get snack bar"),
              subtitle: const Text("call : Get.sanckbar"),
              onTap: () {
                Get.snackbar("Notification", "You order is conform",
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: Colors.amber,
                    icon: const Icon(Icons.add),
                    mainButton: TextButton(
                      onPressed: () {},
                      child: const Text("open"),
                    ));
              },
            ),
          ),

          // dialog alert box
          Card(
            child: ListTile(
              title: const Text("Gets Dialog Alert"),
              subtitle: const Text("call : Get.defaultDialog"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete chart",
                  middleText: "Are sure to delete this chart",
                  // onConfirm: () {},
                  textConfirm: "Yes",
                  textCancel: "No",
                  // // for customise confirm and cancel widget other than text
                  // confirm: TextButton(
                  //   onPressed: () {},
                  //   child: Text("ok"),
                  // ),
                  // cancel: TextButton(
                  //   onPressed: () {
                  //     Get.back();
                  //   },
                  //   child: Text("cancel"),
                  // ),

                  // we can use only 3 lines massage in get so by using content we can customise the dialog box
                  content: Column(
                    children: [
                      for (int i = 0; i < 5; i++) const Text("prasad"),
                    ],
                  ),
                );
              },
            ),
          ),

          // bottom sheet
          Card(
            child: ListTile(
              title: const Text("Get bottom sheet"),
              subtitle: const Text("call : Get.bottomSheet"),
              onTap: () {
                Get.bottomSheet(Container(
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text("Light theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          ),

          // get navigation

          Card(
            child: ListTile(
              title: const Text(
                "Navigate to screen1 page",
              ),
              subtitle: const Text("call: Get.to(Widget) / Get.back(Widget) /"),
              onTap: () {
                Get.to(const Screen1());
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(
                "Get x screen hight and weidth",
              ),
              subtitle: const Text("call: Get.height / Get.width"),
              onTap: () {
                Get.to(const Screen2());
              },
            ),
          )
        ],
      ),
    );
  }
}
