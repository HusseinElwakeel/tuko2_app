import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/Number.dart';

class item extends StatelessWidget {
  const item({super.key, required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: Color(0xfff19031),
      child: Row(
        children: [
          Container(
            color: Color(0xfffff3d9),
            child: Image.asset(
              number.image,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number.JPNumber,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                number.enNumber,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            splashColor: Colors.black,
            onPressed: () async {
              //play sound here
              final player = AudioPlayer();
              await player.setSource(
                  AssetSource("sounds/numbers/number_one_sound.mp3"));
              await player
                  .play(AssetSource("sounds/numbers/number_one_sound.mp3"));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
