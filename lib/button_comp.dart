import 'package:flutter/material.dart';
import 'package:sleep_tight/home_page.dart';
import 'package:sleep_tight/text_fill_comp.dart';

class ButtonComp extends StatelessWidget {
  final String name;

  const ButtonComp({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(username: TextFillComp.nameController.text),
            )
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 113, 66, 255),
          side: const BorderSide(width: 150, color: Color.fromARGB(255, 113, 66, 255)),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20)
        ),
        child: const Text('Enter'),
      )
    );
  }
}