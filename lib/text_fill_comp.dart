import 'package:flutter/material.dart';

class TextFillComp extends StatefulWidget {
  const TextFillComp({super.key});

  static String name = "";

  static String showText = "";

  static var nameController = TextEditingController();

  @override
  State<TextFillComp> createState() => _TextFillComp();
}

class _TextFillComp extends State<TextFillComp> {
  String username = TextFillComp.name;

  @override
  void dispose() {
    TextFillComp.nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        constraints: BoxConstraints.tight(const Size(500, 100)),
        child: TextField(
          style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: 'OpenSans-VariableFont_wdth,wght.ttf'),
          controller: TextFillComp.nameController,
          onChanged: (value) => setState(() {
            TextFillComp.name = value;
          }),
          decoration: InputDecoration(
            labelText: 'Your Name',
            fillColor: const Color.fromARGB(255, 255, 255, 255),
            labelStyle:
                const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
