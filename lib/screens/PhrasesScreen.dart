import 'package:flutter/material.dart';
import 'package:tuko_app/component/PhasesWidget.dart';
import 'package:tuko_app/models/PhrasesModel.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<PhrasesModel> phrasesSentences = const [
    PhrasesModel(
        EnSentences: "are you coming?",
        JpSentences: "Kimasu ka",
        Sound: 'sounds/phrases/are_you_coming.wav'),
    PhrasesModel(
        EnSentences: "dont forget to subscrib",
        JpSentences: "dsahfadbsfakfabfakfka",
        Sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    PhrasesModel(
        EnSentences: "how are you feeling?",
        JpSentences: "Go kibun wa ikagadesu ka.",
        Sound: "sounds/phrases/how_are_you_feeling.wav"),
    PhrasesModel(
        EnSentences: "i love anime",
        JpSentences: "Watashi wa anime ga daisukidesu",
        Sound: "sounds/phrases/i_love_anime.wav"),
    PhrasesModel(
        EnSentences: "i love programming",
        JpSentences: "Watashi wa puroguramingu ga daisukidesu",
        Sound: "sounds/phrases/i_love_programming.wav"),
    PhrasesModel(
        EnSentences: "programming is easy",
        JpSentences: "Puroguramingu wa kantandesu",
        Sound: "sounds/phrases/programming_is_easy.wav"),
    PhrasesModel(
        EnSentences: "what is your name?",
        JpSentences: "Anata no namae wa nandesuka",
        Sound: "sounds/phrases/what_is_your_name.wav"),
    PhrasesModel(
        EnSentences: "where are you going",
        JpSentences: "Doko ni iku no",
        Sound: "sounds/phrases/where_are_you_going.wav"),
    PhrasesModel(
        EnSentences: "yes I'm coming",
        JpSentences: "Hai, ikimasu",
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
