import 'package:flutter/material.dart';

class Invite extends StatelessWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        direction: Axis.horizontal,
        children: [
          Container(
            child: const Text("XYNDFWEKFNWE"),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 2,
                  color: Colors.blueGrey,
                ),
                right: BorderSide(
                  width: 2,
                  color: Colors.blueGrey,
                ),
                bottom: BorderSide(
                  width: 2,
                  color: Colors.blueGrey,
                ),
                top: BorderSide(
                  width: 2,
                  color: Colors.blueGrey,
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            margin: const EdgeInsets.only(right: 8),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
            child: const Text("Copy"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
