import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
          child: ListTile(
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.lock,
                color: Colors.white,
              ),
            ),
            title: Text("Privacy and Policy"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
          child: ListTile(
            leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.info,
                  color: Colors.white,
                )),
            title: Text("About Us"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
          child: ListTile(
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.attach_money_outlined,
                color: Colors.white,
              ),
            ),
            title: Text(
              "Help Us by Donating",
              style: TextStyle(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
          child: ListTile(
            onTap: () {
              print("Logging out");
            },
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
            title: const Text(
              "Logout",
              style: TextStyle(),
            ),
          ),
        )
      ],
    );
  }
}
