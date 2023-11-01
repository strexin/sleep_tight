import 'package:flutter/material.dart';
import 'package:sleep_tight/model/sound_button_data.dart';
import 'package:sleep_tight/sound_button_comp.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;

    int gridCount() {
      if (screenWidht < 500) {
        return 3;
      } else if (screenWidht < 800) {
        return 4;
      } else if (screenWidht < 1200) {
        return 5;
      } else {
        return 6;
      }
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const TopImage(),
              Row(
                children: [
                  HelloText(name: username),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: gridCount()),
                      itemBuilder: (context, index) {
                        final SoundButtonData data = soundButtonList[index];
                        return SoundButtonComp(
                          data: data,
                        );
                      },
                      itemCount: 9,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class TopImage extends StatelessWidget {
  const TopImage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: screenWidht > 610
                    ? const EdgeInsets.symmetric(vertical: 20)
                    : const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: screenWidht > 610
                      ? const BorderRadius.all(Radius.circular(20))
                      : const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                  child: Image.asset(
                    'images/top_home_image.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const BackButton(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class HelloText extends StatefulWidget {
  final String name;

  const HelloText({super.key, required this.name});

  @override
  State<HelloText> createState() => _HelloText();
}

class _HelloText extends State<HelloText> {
  @override
  Widget build(BuildContext context) {
    String username = widget.name;

    return Flexible(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: Text(
          'Good Night, $username',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans-VariableFont_wdth,wght.ttf',
          ),
        ),
      ),
    );
  }
}
