import 'package:flutter/material.dart';
import 'package:sleep_tight/text_fill_comp.dart';
import 'package:sleep_tight/button_comp.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'images/MoonIcon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// Show the title text on top part of screen.
              const TitleText(),

              const SizedBox(height: 100),

              /// Name field that will be filled by user.
              const TextFillComp(),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// The login button that will be used to move to home screen.
                  ButtonComp(
                    name: TextFillComp.name,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: Text(
              'Sleep Tight',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'PlaypenSans',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
