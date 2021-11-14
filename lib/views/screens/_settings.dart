import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Card(
          child: ListTile(
            leading: Icon(Icons.lock),
            title: Text("Privacy and Policy"),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.info),
            title: Text("About Us"),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.attach_money_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Help Us by Donating",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          color: Colors.green,
        ),
      ],
    );
  }
}
