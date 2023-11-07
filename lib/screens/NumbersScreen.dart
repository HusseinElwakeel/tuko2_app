
import 'package:flutter/material.dart';
import 'package:tuko_app/component/Item%20Widget.dart';
import 'package:tuko_app/models/Number.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  final List<Number> numbers = const[
    Number(image: "assets/images/numbers/number_one.png", enNumber: "One", JPNumber: "ichi"),
    Number(image: "assets/images/numbers/number_two.png", enNumber: "Two", JPNumber: "Ni"),
    Number(image: "assets/images/numbers/number_three.png", enNumber: "Three", JPNumber: "San"),
    Number(image: "assets/images/numbers/number_four.png", enNumber: "Four", JPNumber: "Shi"),
    Number(image: "assets/images/numbers/number_five.png", enNumber: "Five", JPNumber: "Go"),
    Number(image: "assets/images/numbers/number_six.png", enNumber: "Six", JPNumber: "Roku"),
    Number(image: "assets/images/numbers/number_seven.png", enNumber: "Seven", JPNumber: "Sebun"),
    Number(image: "assets/images/numbers/number_eight.png", enNumber: "Eight", JPNumber: "Hachi"),
    Number(image: "assets/images/numbers/number_nine.png", enNumber: "Nine", JPNumber: "Kyū"),
    Number(image: "assets/images/numbers/number_ten.png", enNumber: "Ten", JPNumber: "Jū"),
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
        body:
        ListView(
          children: [
            item(number: numbers[0]),
            item(number: numbers[1]),
            item(number: numbers[2]),
            item(number: numbers[3]),
            item(number: numbers[4]),
            item(number: numbers[5]),
            item(number: numbers[6]),
            item(number: numbers[7]),
            item(number: numbers[8]),
            item(number: numbers[9]),

          ],
        )




    );
  }
}
//write  class + name of the class {
// البيانات الى بتمثل ال class ده
// }