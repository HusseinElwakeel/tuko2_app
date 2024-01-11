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
      height: 110,
      color: Color(0xff48a6cc),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    phrases.JpSentences,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    phrases.EnSentences,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(
                    phrases.Sound,
                  ));
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
