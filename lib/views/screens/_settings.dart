import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black12,
      ),
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const Card(
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text("Privacy and Policy"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
            ),
          ),
          const Card(
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
          Card(
            child: ListTile(
              onTap: () {
                print("Logging out");
              },
              leading: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            color: Colors.redAccent,
          )
        ],
      ),
    );
  }
}
