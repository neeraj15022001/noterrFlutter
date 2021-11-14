import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
            leading: const CircleAvatar(),
            title: const Text("Channel 1"),
            subtitle: const Text("Description for channel"),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: () {
              print("Tapped");
            },
          ),
          ListTile(
            leading: const CircleAvatar(),
            title: const Text("Channel 2"),
            subtitle: const Text("Description for channel"),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: () {
              print("Tapped 2");
            },
          ),
          ListTile(
            leading: const CircleAvatar(),
            title: const Text("Channel 3"),
            subtitle: const Text("Description for channel"),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: () {
              print("Tapped 3");
            },
          ),
        ],
      ).toList(),
    );
  }
}
