import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String enName;
  final String jpName;
  final String image;
  final String sound;

  const ItemModel(
      {required this.enName,
      required this.jpName,
      required this.image,
      required this.sound});

  playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
