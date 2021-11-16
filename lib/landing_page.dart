import 'package:flutter/material.dart';
import 'package:noterr/views/auth/_login.dart';
import 'package:noterr/views/screens/_home.dart';
import 'package:noterr/views/screens/_invite.dart';
import 'package:noterr/views/screens/_settings.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
        foregroundColor: Colors.indigo,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Text("Notes"),
        ),
        // actions: [
        //   Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: ElevatedButton.icon(
        //         style: ButtonStyle(
        //           backgroundColor: MaterialStateProperty.all(Colors.white),
        //           foregroundColor: MaterialStateProperty.all(Colors.indigo),
        //           elevation: MaterialStateProperty.all<double>(0),
        //         ),
        //         onPressed: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => const Login(),
        //             ),
        //           );
        //         },
        //         label: const Text('Login'),
        //         icon: const Icon(
        //           Icons.login_outlined,
        //         ),
        //       )),
        // ],
      ),
      body: _options.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black26,
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
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}
