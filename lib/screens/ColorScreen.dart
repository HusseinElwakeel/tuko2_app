import 'package:flutter/material.dart';
import 'package:tuko_app/Constant/ColorScreenConstant.dart';
import 'package:tuko_app/component/ItemWidget.dart';
import 'package:tuko_app/models/Item%20Model.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Screen"),
        backgroundColor: Color(0xff412e28),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) =>
            ItemWidget(member: colors[index], color: Color(0xff7d3fa2)),
      ),
    );
  }
}
