import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:noterr/custom_widgets/show_exception_alert_dialog.dart';
import "dart:developer" as developer;
import '../../firebase_auth.dart';
import 'package:noterr/views/main/landing_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void _showSignInError(BuildContext context, Exception exception) {
    if (exception is FirebaseAuthException &&
        exception.code == 'ERROR_ABORTED_BY_USER') {
      return;
    }
    showExceptionAlertDialog(
      context,
      title: "Sign In Failed",
      exception: exception,
    );
  }

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              _isLoading
                  ? CircularProgressIndicator()
                  : ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.indigoAccent,
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(32, 12, 32, 12),
                        ),
                      ),
                      onPressed: _isLoading
                          ? null
                          : () async {
                              developer.log("Sign in here with google");
                              try {
                                setState(() {
                                  _isLoading = true;
                                });
                                final auth = Auth();
                                var user = await auth.signInWithGoogle();
                                Route route = MaterialPageRoute(
                                  builder: (context) => const LandingPage(),
                                );
                                Navigator.pushReplacement(context, route);
                              } catch (error) {
                                developer.log("Firebase google auth error",
                                    error: error);
                                // _showSignInError(context, error);
                              } finally {
                                setState(() {
                                  _isLoading = false;
                                });
                              }
                            },
                      icon: Image.asset(
                        "assets/auth/google.png",
                        height: 28,
                        width: 28,
                      ),
                      label: Text("Sign in with Google"),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
