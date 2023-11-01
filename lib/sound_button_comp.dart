import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sleep_tight/model/sound_button_data.dart';

class SoundButtonComp extends StatefulWidget {
  final SoundButtonData data;

  const SoundButtonComp({super.key, required this.data});

  @override
  State<SoundButtonComp> createState() => _SoundButtonComp();
}

class _SoundButtonComp extends State<SoundButtonComp> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          decoration: BoxDecoration(
            color: isPressed
                ? const Color.fromARGB(255, 11, 11, 167)
                : const Color.fromARGB(255, 68, 68, 255),
            shape: BoxShape.circle,
          ),
          constraints: const BoxConstraints(
            maxHeight: 10,
            maxWidth: 10,
          ),
          child: MaterialButton(
            onPressed: () async {
              setState(() {
                isPressed = !isPressed;
              });

              Future<void> playSound() async {
                if (isPressed) {
                  await widget.data.player.play(AssetSource(widget.data.sound),
                      mode: PlayerMode.mediaPlayer);
                  widget.data.player.setReleaseMode(ReleaseMode.loop);
                } else {
                  await widget.data.player.stop();
                }
              }

              await playSound();
            },
            child: Image.asset(
              widget.data.image,
              fit: BoxFit.contain,
              width: 70,
              height: 70,
            ),
          )),
    );
  }
}
