import 'package:flutter/material.dart';
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
    setState(() => {
    _selectedIndex = index
    });
  }

  static const options = TextStyle(fontSize: 25);
  static const List<Widget> _options = [
    Text('Index 0 Home', style: options,),
    Text('Index 1 Invite', style: options,),
    Settings()
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
        ),
        body: _options.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.home)),
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
