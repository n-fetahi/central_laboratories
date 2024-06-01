import 'dart:async';

import 'package:flutter/material.dart';
import 'package:central_laboratories/constant/Navigator_Event.dart';
import 'package:central_laboratories/constant/SizeOfConfig.dart';
import 'package:central_laboratories/view/SignIn.dart';
import 'package:central_laboratories/view/Intro.dart';

import '../constant/constant.dart';
import '../constant/myTexts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 5),
        (){pushNavigator(Welcome(), context);}
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFF90D297),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [(secondColor),primaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment:Alignment.bottomCenter,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white.withOpacity(0.8),
                  ),
                  Image.asset('assets/Welcome/Wel(2).webp',
                  height: getheightScreen(150),
                  width: getWidthScreen(150),
                  ),
                ],
              ),
              SizedBox(height: getWidthScreen(10),),
              MyTexts(
                text: "المختبرات المركزية",
                size: 27,
                color: Colors.white,

              ),
              MyTexts(
                text: "Central Laboratories",
                size: 25,
                color: Colors.white,

              ),
              SizedBox(height: getWidthScreen(20),),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.cyan,
              )
            ],
          ),
        ),
      ),
    );
  }
}
