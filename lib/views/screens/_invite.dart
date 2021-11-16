import 'package:flutter/material.dart';

class Invite extends StatelessWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/invite/illustration.webp"),
            const SizedBox(
              height: 40,
            ),
            Flex(
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
                  padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                  margin: const EdgeInsets.only(right: 8),
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.copy),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(16, 10, 16, 10),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                  ),
                  label: const Text("Copy"),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
