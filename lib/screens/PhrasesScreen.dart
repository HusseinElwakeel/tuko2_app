import 'package:flutter/material.dart';
import 'package:tuko_app/Constant/PhrasesScreenConstant.dart';
import 'package:tuko_app/component/PhasesWidget.dart';
import 'package:tuko_app/models/PhrasesModel.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

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
