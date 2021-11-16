import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import "dart:developer" as developer;

import 'package:noterr/landing_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.indigoAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Noterr",
                style: TextStyle(
                  color: Color(0xfff3f3ff),
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                ),
              ),
              Image.asset("assets/auth/login_illustration.png"),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.indigoAccent,
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.fromLTRB(32, 12, 32, 12),
                  ),
                ),
                onPressed: () async {
                  developer.log("Sign in here with google");
                  var userCredential = await signInWithGoogle();
                  if (userCredential.user != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LandingPage(),
                      ),
                    );
                  }
                },
                icon: Image.asset(
                  "assets/auth/google.png",
                  height: 28,
                  width: 28,
                ),
                label: const Text("Sign in with Google"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
