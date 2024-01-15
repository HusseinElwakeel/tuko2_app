import 'package:flutter/material.dart';
import 'package:tuko_app/component/PhasesWidget.dart';
import 'package:tuko_app/models/PhrasesModel.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<PhrasesModel> phrasesSentences = const [
    PhrasesModel(
        EnSentences: "Are you coming?",
        JpSentences: "Rai masu ka ?",
        Sound: 'sounds/phrases/are_you_coming.wav'),
    PhrasesModel(
        EnSentences: "Dont forget to subscrib",
        JpSentences: "koudoku suru koto wa wasure nai de kudasai",
        Sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    PhrasesModel(
        EnSentences: "How are you feeling?",
        JpSentences: "Choushi wa dou desu ka ?",
        Sound: "sounds/phrases/how_are_you_feeling.wav"),
    PhrasesModel(
        EnSentences: "I Love Anime",
        JpSentences: "Watashi wa anime ga daisuk desu",
        Sound: "sounds/phrases/i_love_anime.wav"),
    PhrasesModel(
        EnSentences: "I Love Programming",
        JpSentences: "Programming ga daisuk",
        Sound: "sounds/phrases/i_love_programming.wav"),
    PhrasesModel(
        EnSentences: "Programming is easy",
        JpSentences: "Programming ga kantan",
        Sound: "sounds/phrases/programming_is_easy.wav"),
    PhrasesModel(
        EnSentences: "What is your name?",
        JpSentences: "Anata no namae wa nani desu ka?",
        Sound: "sounds/phrases/what_is_your_name.wav"),
    PhrasesModel(
        EnSentences: "Where are you going?",
        JpSentences: "Doko ni iki masu ka?",
        Sound: "sounds/phrases/where_are_you_going.wav"),
    PhrasesModel(
        EnSentences: "Yes I'm coming.",
        JpSentences: "Hai, rai masu.",
        Sound: "assets/sounds/phrases/yes_im_coming.wav")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrases Screen"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) =>
            PhrasesWidget(phrases: phrasesSentences[index]),
        itemCount: phrasesSentences.length,
      ),
    );
  }
}
