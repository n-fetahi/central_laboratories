import 'package:flutter/material.dart';


class MyTexts extends StatelessWidget {
  const MyTexts({Key? key, required this.text, this.color, required this.size, this.fontWeight}) : super(key: key);
  final String text;
  final Color ?color;
  final double size;
  final FontWeight ?fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'Cairo',
          fontWeight: fontWeight==null?FontWeight.bold:fontWeight,
          color: color==null?Colors.black:color,

      ),
    );
  }
}
