import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/NumberModel.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({super.key, required this.number});

  final NumberModel number;

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
                  fontSize: 30,
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
            onPressed: () {
              number.playSound();
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
