import 'package:audioplayers/audioplayers.dart';

class SoundButtonData {
  String image;
  // ignore: prefer_typing_uninitialized_variables
  var sound;
  AudioPlayer player;
  
  SoundButtonData ({
    required this.image,
    required this.sound,
    required this.player,
  });
}

var soundButtonList = [
  SoundButtonData(image: 'images/forest_icon.png', sound: "sounds/forest-sound.mp3", player: AudioPlayer()),
  SoundButtonData(image: 'images/rain_icon.png', sound: 'sounds/rain-sound.mp3', player: AudioPlayer()),
  SoundButtonData(image: 'images/thunder_icon.png', sound: 'sounds/storm-sound.mp3', player: AudioPlayer()),
  SoundButtonData(image: 'images/ocean_icon.png', sound: 'sounds/ocean-sound.mp3', player: AudioPlayer()),
  SoundButtonData(image: 'images/wind_icon.png', sound: 'sounds/wind-sound.mp3', player: AudioPlayer()),
  SoundButtonData(image: 'images/keyboard_icon.jpg', sound: 'sounds/keyboard-sound.mp3', player: AudioPlayer()),
  SoundButtonData(image: 'images/road_icon.png', sound: 'sounds/road-sound.mp3', player: AudioPlayer()),
  SoundButtonData(image: 'images/bird_icon.png', sound: 'sounds/birds-sound.mp3', player: AudioPlayer()),
  SoundButtonData(image: 'images/campfire_icon.png', sound: 'sounds/campfire-sound.mp3', player: AudioPlayer()),
];