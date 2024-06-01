import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'SizeOfConfig.dart';

Widget ButtonItem (String imagePath , String buttonName ,Function() onTap, BuildContext context) {
  SizeOfConfig().init(context);
  return InkWell(
    onTap: onTap,
    //child: Container(
    //width: SizeOfConfig.widthScreen,
    //height: 60,
     child: Container(
        margin: EdgeInsets.only(right: 50,top: 70),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 8,
            ),
          ],
        ),
        // child: Icon(
        //   Icons.play_arrow_outlined,
        //   color: Colors.white,
        //   size: 60,
        // ),
    //  ),
    // child: Card(
    //   elevation: 20,
    //   color: Color(0xFF57698F),
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(15),
    //     side: const BorderSide(
    //       width: 1,
    //       color: Colors.white,
    //     )
    //   ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
           imagePath,
           height: 50,
           width: 50,
           ),
          // Text(
          //   buttonName,
          //   style: const TextStyle(
          //     color: Colors.white,
          //     fontSize: 17,
          //   ),
          // ),
        ],
      ),
    ),

  );
}