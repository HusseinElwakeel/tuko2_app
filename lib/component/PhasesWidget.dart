import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/PhrasesModel.dart';

class PhrasesWidget extends StatelessWidget {
  const PhrasesWidget({super.key, required this.phrases});

  final PhrasesModel phrases;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrases.JpSentences,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  phrases.EnSentences,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                phrases.playSound();
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.redAccent,
              ))
        ],
      ),
    );
  }
}
