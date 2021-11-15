import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Login"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black12,
        ),
        child: Center(
          child: ElevatedButton.icon(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.fromLTRB(32, 8, 32, 8),
              ),
            ),
            onPressed: () {},
            icon: Image.asset(
              "assets/auth/google.png",
              height: 28,
              width: 28,
            ),
            label: const Text("Sign in with Google"),
          ),
        ),
      ),
    );
  }
}
