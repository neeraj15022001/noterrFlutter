import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noterr/views/auth/_login.dart';
import 'package:noterr/views/screens/_home.dart';
import 'package:noterr/views/screens/_invite.dart';
import 'package:noterr/views/screens/_settings.dart';

void main() {
  runApp(MaterialApp(
    title: "Notes",
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => {_selectedIndex = index});
  }

  static const List<Widget> _options = [
    Home(),
    Invite(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: const Text("Notes"),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.blue),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
                label: const Text('Login'),
                icon: const Icon(
                  Icons.login_outlined,
                ),
              )),
        ],
      ),
      body: _options.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: "Invite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
