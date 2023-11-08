import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({required this.text, required this.color, required this.onTap});

  late final String text;
  late final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        height: 50,
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
