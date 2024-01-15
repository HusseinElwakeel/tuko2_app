import 'package:audioplayers/audioplayers.dart';

class PhrasesModel {
  final String JpSentences;
  final String EnSentences;
  final String Sound;

  const PhrasesModel({
    required this.EnSentences,
    required this.JpSentences,
    required this.Sound,
  });

  playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(Sound));
  }
}
