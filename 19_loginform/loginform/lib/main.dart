import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Loginform",
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State createState() => _LoginFormState();
}

class _LoginFormState extends State {
  TextEditingController userNameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 50,
            ),
            Image.network(
              "https://e7.pngegg.com/pngimages/340/946/png-clipart-avatar-user-computer-icons-software-developer-avatar-child-face.png",
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              key: loginkey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (userNameController.text.isEmpty) {
                        return "plase enter username";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (userNameController.text.isEmpty) {
                        return "plase enter password";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (!loginkey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'Love you from prasad \n code nasel samajla tar sang udya sangto sutich ahe '),
                    ),
                  );
                  setState(() {});
                }
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
