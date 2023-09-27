import 'package:flutter/material.dart';

class AccountsWidgets extends StatelessWidget {
  const AccountsWidgets(
      {super.key, required this.text, required this.texticon});

  final String text;
  final Icon texticon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            texticon,
            const SizedBox(
              width: 7,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
