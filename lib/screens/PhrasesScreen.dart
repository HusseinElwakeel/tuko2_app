import 'package:flutter/material.dart';
import 'package:tuko_app/component/PhasesWidget.dart';
import 'package:tuko_app/models/PhrasesModel.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});

  final List<PhrasesModel> phrasesSentences = [
    PhrasesModel(
        EnSentences: "how are you?",
        JpSentences: "fhakfabjfmafnafad",
        Sound: ''),
    PhrasesModel(
        EnSentences: "how old are you?",
        JpSentences: "dsahfadbsfakfabfakfka",
        Sound: '')
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
