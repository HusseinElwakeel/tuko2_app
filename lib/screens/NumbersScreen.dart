import 'package:flutter/material.dart';
import 'package:tuko_app/component/Number%20Widget.dart';
import 'package:tuko_app/models/NumberModel.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  final List<NumberModel> numbers = const [
    NumberModel(
        image: "assets/images/numbers/number_one.png",
        enNumber: "One",
        JPNumber: "ichi",
        sound: "sounds/numbers/number_one_sound.mp3"),
    NumberModel(
        image: "assets/images/numbers/number_two.png",
        enNumber: "Two",
        JPNumber: "Ni",
        sound: "sounds/numbers/number_two_sound.mp3"),
    NumberModel(
        image: "assets/images/numbers/number_three.png",
        enNumber: "Three",
        JPNumber: "San",
        sound: "sounds/numbers/number_three_sound.mp3"),
    NumberModel(
        image: "assets/images/numbers/number_four.png",
        enNumber: "Four",
        JPNumber: "Shi",
        sound: "sounds/numbers/number_four_sound.mp3"),
    NumberModel(
        image: "assets/images/numbers/number_five.png",
        enNumber: "Five",
        JPNumber: "Go",
        sound: "sounds/numbers/number_five_sound.mp3"),
    NumberModel(
        image: "assets/images/numbers/number_six.png",
        enNumber: "Six",
        JPNumber: "Roku",
        sound: "sounds/numbers/number_six_sound.mp3"),
    NumberModel(
        image: "assets/images/numbers/number_seven.png",
        enNumber: "Seven",
        JPNumber: "Sebun",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    NumberModel(
        image: "assets/images/numbers/number_eight.png",
        enNumber: "Eight",
        JPNumber: "Hachi",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    NumberModel(
        image: "assets/images/numbers/number_nine.png",
        enNumber: "Nine",
        JPNumber: "Kyū",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    NumberModel(
        image: "assets/images/numbers/number_ten.png",
        enNumber: "Ten",
        JPNumber: "Jū",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];

  // final Number One = const Number(
  //     image: "assets/images/numbers/number_one.png",
  //     enNumber: "One",
  //     JPNumber:  "ichi");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff412e28),
        title: Text("Numbers"),
      ),
      body: ListView.builder(
        // length of the list of item
        itemCount: numbers.length,
        // it's the item what want to build
        itemBuilder: (context, index) => NumberWidget(number: numbers[index]),
      ),
    );
  }
}
