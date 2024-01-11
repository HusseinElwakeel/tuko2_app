import 'package:flutter/material.dart';
import 'package:tuko_app/component/ItemWidget.dart';
import 'package:tuko_app/models/Item%20Model.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  final List<ItemModel> colors = const [
    ItemModel(
        enName: "Black",
        jpName: "Kuro",
        image: "assets/images/colors/color_black.png",
        sound: "sounds/colors/black.wav"),
    ItemModel(
        enName: "Brown",
        jpName: "Chairo",
        image: "assets/images/colors/color_brown.png",
        sound: "sounds/colors/brown.wav"),
    ItemModel(
        enName: "Dusty yellow",
        jpName: "Dasutiierō",
        image: "assets/images/colors/color_dusty_yellow.png",
        sound: "sounds/colors/dusty yellow.wav"),
    ItemModel(
        enName: "Gray",
        jpName: "Gurē",
        image: "assets/images/colors/color_gray.png",
        sound: "sounds/colors/gray.wav"),
    ItemModel(
        enName: "Green",
        jpName: "Midori",
        image: "assets/images/colors/color_green.png",
        sound: "sounds/colors/green.wav"),
    ItemModel(
        enName: "Red",
        jpName: "Aka",
        image: "assets/images/colors/color_red.png",
        sound: "sounds/colors/red.wav"),
    ItemModel(
        enName: "White",
        jpName: "Shiro",
        image: "assets/images/colors/color_white.png",
        sound: "sounds/colors/white.wav"),
    ItemModel(
        enName: "Yellow",
        jpName: "Kiiro",
        image: "assets/images/colors/yellow.png",
        sound: "sounds/colors/yellow.wav"),
  ];

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
