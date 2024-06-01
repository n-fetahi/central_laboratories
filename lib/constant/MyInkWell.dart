import 'package:flutter/material.dart';

Widget MyInkWell(String text,Function() press){
  return InkWell(
    child: Text(text,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color:  Colors.white,
          fontSize: 20,
    ),
    ),
  onTap: press,
  );
}