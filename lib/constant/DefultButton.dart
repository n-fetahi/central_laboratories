import 'package:central_laboratories/constant/constant.dart';
import 'package:central_laboratories/constant/myTexts.dart';
import 'package:flutter/material.dart';

import 'SizeOfConfig.dart';


class DefultButton extends StatefulWidget {
  const DefultButton({Key? key, this.text, required this.press, this.isIcon, required this.backgroundColor}) : super(key: key);

  final String ?text;
  final Function() press;
  final bool ?isIcon;
  final Color backgroundColor;


  @override
  State<DefultButton> createState() => _DefultButtonState();
}

class _DefultButtonState extends State<DefultButton> {
  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);

    return SizedBox(
      height: getheightScreen(40),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(
                width: 1,
                color: primaryColor
            ),
          ),
          primary: Colors.black,
          backgroundColor: widget.backgroundColor
        ),
        onPressed: widget.press as void Function(),
        child: widget.isIcon==true ?Icon(Icons.search,color: Colors.white,):MyTexts(
            text: widget.text!, size: 18,
        color: Colors.white,
        ),
      ),
    );;
  }
}


// Widget DefultButton(String text,Function() press,bool isIcon){
//   return SizedBox(
//     width: double.infinity,
//     height: 56,
//     child: TextButton(
//       style: TextButton.styleFrom(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//           side: const BorderSide(
//             width: 1,
//             color: Colors.black
//           ),
//         ),
//         primary: Colors.black,
//         backgroundColor: Colors.white,
//       ),
//       onPressed: press as void Function(),
//       child: isIcon==true ?Icon(Icons.search):Text(text,
//         style: TextStyle(
//           fontSize: 23,
//           color: Colors.black,
//         ),
//       ),
//     ),
//   );
// }