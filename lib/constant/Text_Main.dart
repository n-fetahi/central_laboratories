import 'package:flutter/material.dart';

import 'constant.dart';

class TextMain extends StatelessWidget{
  const TextMain({Key? key, required this.MainText, required this.anText, /*required this.img*/}) : super(key: key);

  final String MainText;
  final String anText;
  //final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(MainText,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.8),
              shadows: [textShadow],//[BoxShadow(color: Color(0xFF57698F),blurRadius: 1,offset: const Offset(-1, 2),)],
            ),
          ),
          Text(anText,
            style: TextStyle(
              shadows: [textShadow],
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.8),
            ),
          )
        ],
      ),
    );
  }
}