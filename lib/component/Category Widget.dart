import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});

  final String text;
  final Color color;
  final Function() onTap;

  // final VoidCallback OnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        height: 80,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
