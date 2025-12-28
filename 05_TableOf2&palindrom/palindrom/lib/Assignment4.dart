import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment4> {
  int? countPalindrom = 0;
  int? countAmtrom = 0;
  int? countStrong = 0;

  List<int> nums = [121, 20, 222, 452, 212, 454, 153, 587, 145, 12];

  void countPalindromNunber() {
    setState(() {
      countPalindrom = 0;
      for (int i = 0; i < nums.length; i++) {
        int origanal = nums[i];
        int reverse = 0;
        int number = nums[i];

        while (number != 0) {
          reverse = reverse * 10 + number % 10;
          number = number ~/ 10;
        }

        if (reverse == origanal) {
          countPalindrom = countPalindrom! + 1;
        }
      }
    });
  }

  void countAmtromNumber() {
    setState(() {
      countAmtrom = 0;

      for (int i = 0; i < nums.length; i++) {
        int original = nums[i];
        int tempchake = 0;
        int digitcount = 0;

        int number = nums[i];

        while (number != 0) {
          number = number ~/ 10;
          digitcount++;
        }
        number = nums[i];

        for (int i = 0; i < nums.length; i++) {
          while (number != 0) {
            int digit = number % 10;
            int amtromdigit = 1;

            for (int i = 1; i <= digitcount; i++) {
              amtromdigit = amtromdigit * digit;
            }

            tempchake = tempchake + amtromdigit;
            number = number ~/ 10;
          }
        }
        if (tempchake == original) {
          countAmtrom = countAmtrom! + 1;
          print(original);
        }
      }
    });
  }

  void countStrongNumber() {
    setState(() {
      for (int i = 0; i < nums.length; i++) {
        int origanal = nums[i];
        int tempcheck = 0;
        int number = nums[i];

        while (number != 0) {
          int digit = number % 10;

          for (int j = digit - 1; j > 0; j--) {
            digit = digit * j;
          }
          tempcheck = tempcheck + digit;
          number = number ~/ 10;
        }
        if (origanal == tempcheck) {
          countStrong = countStrong! + 1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Number Type")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Result"),
          const SizedBox(
            height: 20,
          ),
          Text("$countPalindrom"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: countPalindromNunber,
              child: const Text("count Palindrom")),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("$countAmtrom"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: countAmtromNumber, child: const Text("count Amtrom")),
          const SizedBox(
            height: 20,
          ),
          Text("$countStrong"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: countStrongNumber, child: const Text("count strong")),
        ]),
      ),
    );
  }
}
