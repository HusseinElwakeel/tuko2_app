import 'package:audioplayers/audioplayers.dart';

class NumberModel {
  final String image;
  final String enNumber;
  final String JPNumber;
  final String sound;

  const NumberModel(
      {required this.image,
      required this.enNumber,
      required this.JPNumber,
      required this.sound});

  playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
