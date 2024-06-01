import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm({Key? key, this.lableText, this.myKey, required this.obscureText, this.icon, this.controller, this.validation, this.press, this.hint}) : super(key: key);

  final String ? lableText;
  final TextInputType ? myKey;
  late final bool obscureText;
  final IconData ? icon;
  final TextEditingController ? controller;
  final Function ? validation;
  final Function ? press;
  final String ? hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: myKey,
      validator: validation as  String ? Function(String?),
      onChanged: press as void Function(String?),
      controller: controller,
      obscureText: obscureText,
      // style: const TextStyle(
      //   fontSize: 20,
      //   color: Colors.white,
      // ),
      decoration: InputDecoration(
        focusColor:  Color(0xffF5591F),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        labelText: lableText,
        labelStyle: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15),
        //   borderSide: const BorderSide(
        //     width: 2,
        //     color: Colors.white,
        //   ),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15),
        //   borderSide: const BorderSide(
        //     width: 4,
        //     color: Colors.white,
        //   ),
        // ),
        suffixIcon: Icon(icon,color: Color(0xFF050B1E),
        ),
      ),
    );
  }
}
