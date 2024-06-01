import 'package:flutter/material.dart';

import 'ImageContainer.dart';
import 'SizeOfConfig.dart';
import 'myTexts.dart';

Widget logo(BuildContext context) {
  SizeOfConfig().init(context);
  return Container(
    // width: getWidthScreen(0),
    height: getheightScreen(80),
    margin: EdgeInsets.only(right:10 ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageContainer(
          width: getWidthScreen(40),
          height: getheightScreen(35),
          // imageName: 'assets/logo.png',
          imageName: 'assets/Welcome/Wel(2).webp',
        ),

        MyTexts(
          text: 'المختبرات المركزية',
          size: 11,
          color: Colors.white,
        ),
        MyTexts(
          text: 'Central Laboratories',
          size: 10,
          color: Colors.white,

        )


      ],
    ),
  );
}