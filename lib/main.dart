import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sleep_tight/login_page.dart';

void main() {
  runApp(const MainApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sleep Tight',
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(236, 161, 161, 250)),
      home: const LoginPage()
    );
  }
}
