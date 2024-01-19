import 'package:flutter/material.dart';
import 'package:tuko_app/Constant/NumberScreenConstant.dart';
import 'package:tuko_app/component/Number%20Widget.dart';
import 'package:tuko_app/models/NumberModel.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

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
