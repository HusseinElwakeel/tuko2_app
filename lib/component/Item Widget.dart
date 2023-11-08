import 'package:flutter/material.dart';
import 'package:tuko_app/models/Number.dart';

class item extends StatelessWidget {
  const item({super.key, required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
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
            children: [
              Text(
                number.JPNumber,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                number.enNumber,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
