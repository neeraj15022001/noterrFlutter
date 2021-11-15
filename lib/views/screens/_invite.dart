import 'package:flutter/material.dart';

class Invite extends StatelessWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
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
                    color: Colors.black12,
                  ),
                  right: BorderSide(
                    width: 2,
                    color: Colors.black12,
                  ),
                  bottom: BorderSide(
                    width: 2,
                    color: Colors.black12,
                  ),
                  top: BorderSide(
                    width: 2,
                    color: Colors.black12,
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
      ),
    );
  }
}
