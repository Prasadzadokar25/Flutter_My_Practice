import "package:flutter/material.dart";
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class UserInfo {
  String accountHolderName;
  String accountNumber;

  UserInfo({required this.accountHolderName, required this.accountNumber});
}

class AcountInfo extends ChangeNotifier {
  double balance;

  AcountInfo({
    required this.balance,
  });

  void withdrawa({required ammount}) {
    if (balance >= ammount) {
      balance = balance - ammount;
      notifyListeners();
    }
  }

  void deposit({required ammount}) {
    balance = balance + ammount;
    notifyListeners();
  }
}

class TransationInfo extends ChangeNotifier {
  List<Map> transaations;

  TransationInfo({required this.transaations});

  void addTrasation({required double amount, required bool isDiposite}) {
    transaations.add({"amount": amount, "isDiposite": isDiposite});
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return UserInfo(
              accountHolderName: "Prasad zadokar",
              accountNumber: "5412589632",
            );
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return AcountInfo(balance: 1000);
          },
        ),
        ChangeNotifierProvider(create: (context) {
          return TransationInfo(transaations: []);
        })
      ],
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  TextEditingController ammountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade300,
        title: const Text(
          "Bank Manegment",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Accountholder name : ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    Provider.of<UserInfo>(context).accountHolderName,
                    style: const TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "  Account number : ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    Provider.of<UserInfo>(context).accountNumber,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      myAlertBox(
                        buttonName: "Diposite in bank",
                        isDiposite: true,
                      );
                    },
                    child: const Text("Diposite"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      myAlertBox(
                        buttonName: "Withdrawl from bank",
                        isDiposite: false,
                      );
                    },
                    child: const Text("Withdrowal"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer2<AcountInfo, TransationInfo>(
                    builder: (context, value, value2, child) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "        Balance : RS. ",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "${Provider.of<AcountInfo>(context).balance}",
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 500,
                            width: 300,
                            child: ListView.builder(
                              itemCount: Provider.of<TransationInfo>(context)
                                  .transaations
                                  .length,
                              itemBuilder: (context, index) {
                                double ammount =
                                    Provider.of<TransationInfo>(context)
                                        .transaations[index]["amount"];
                                bool isDiposite =
                                    Provider.of<TransationInfo>(context)
                                        .transaations[index]["isDiposite"];
                                return (isDiposite)
                                    ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 400,
                                          height: 60,
                                          color: Colors.green,
                                          child: Row(
                                            children: [
                                              const Text("Diposite "),
                                              const Spacer(),
                                              Text("$ammount")
                                            ],
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 200,
                                          height: 60,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 253, 116, 106)),
                                          child: Row(
                                            children: [
                                              const Text("Withdrowl"),
                                              const Spacer(),
                                              Text("$ammount")
                                            ],
                                          ),
                                        ),
                                      );
                              },
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void myAlertBox({required String buttonName, required bool isDiposite}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Add amount",
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: ammountController,
                decoration: const InputDecoration(
                  prefixText: "Rs.",
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  String amount = ammountController.text.trim();
                  double amountDouble = double.parse(amount);
                  if (amount.isNotEmpty && isDiposite) {
                    Provider.of<AcountInfo>(listen: false, context).deposit(
                      ammount: amountDouble,
                    );
                    Provider.of<TransationInfo>(listen: false, context)
                        .addTrasation(
                            amount: amountDouble, isDiposite: isDiposite);
                    ammountController.clear();
                    Navigator.of(context).pop();
                  } else if (amount.isNotEmpty && !isDiposite) {
                    Provider.of<AcountInfo>(listen: false, context).withdrawa(
                      ammount: double.parse(amount),
                    );
                    Provider.of<TransationInfo>(listen: false, context)
                        .addTrasation(
                            amount: amountDouble, isDiposite: isDiposite);
                    ammountController.clear();
                    Navigator.of(context).pop();
                  }
                },
                child: Text(buttonName),
              )
            ],
          ),
        );
      },
    );
  }
}
