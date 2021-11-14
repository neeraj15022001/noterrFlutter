import 'package:flutter/material.dart';
import 'package:noterr/views/screens/_home.dart';
import 'package:noterr/views/screens/_invite.dart';
import 'package:noterr/views/screens/_settings.dart';

void main() {
  runApp(const MyApp());
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
    return MaterialApp(
      title: "Noterr",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Notes"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.login),
                  ),
                  Text("Login")
                ],
              ),
            ),
            // Row(
            //   children: [
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(Icons.logout),
            //       color: Colors.redAccent,
            //     ),
            //     Text("Logout")
            //   ],
            // ),
            // SizedBox(
            //   child: ElevatedButton(
            //     onPressed: () {
            //       print("login pressed");
            //     },
            //     child: const Text(
            //       "Login",
            //       style: TextStyle(
            //         color: Colors.blue,
            //       ),
            //     ),
            //     style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all(Colors.white),
            //     ),
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     print("logout pressed");
            //   },
            //   child: const Text(
            //     "Logout",
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all(Colors.redAccent),
            //   ),
            // )
          ],
        ),
        body: _options.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add), label: "Invite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
