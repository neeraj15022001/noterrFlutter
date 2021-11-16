import 'package:flutter/material.dart';
import 'dart:developer' as developer;

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:noterr/views/auth/_login.dart';
import 'package:flutter/services.dart';
import 'package:noterr/views/main/landing_page.dart';

import 'firebase_auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Notes",
      home: App(),
    ),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      var firebaseApp = await Firebase.initializeApp();
      developer.log("Firebase App ", error: firebaseApp);
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      developer.log("Error : ", error: e);
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if (_error) {
      developer.log("Something went wrong");
      return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Center(
          child: Text("Something went wrong"),
        ),
      );
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    var auth = Auth();
    if (auth.currentUser != null) {
      print(auth.currentUser);
      return const LandingPage();
    }
    return const Login();
  }
}
