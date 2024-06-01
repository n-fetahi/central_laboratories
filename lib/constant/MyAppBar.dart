import 'package:central_laboratories/constant/myTexts.dart';
import 'package:flutter/material.dart';

import 'SearchText.dart';
import 'SizeOfConfig.dart';
import 'constant.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key,
    this.leading=const Icon(Icons.format_list_bulleted_sharp, size: 35,)
    ,this.trailing= const SizedBox(),this.isHome=false,this.SearchText, required this.title, this.isAnalysis})
      : super(key: key);

  final Widget leading;
  final Widget trailing;
  final bool ?isHome;
  final String title;
  final Widget ?SearchText;
  final bool? isAnalysis;




  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);
    return  AppBar(


            flexibleSpace:
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                margin: widget.isHome==true? EdgeInsets.only(bottom: 40):EdgeInsets.zero,
                decoration: BoxDecoration(
                gradient: LinearGradient(colors: [(secondColor),primaryColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50),
                  ),
                ),
                 width: double.infinity,
                  padding: widget.isHome==false?EdgeInsets.only(top: getheightScreen(30),right: getWidthScreen(10),): EdgeInsets.only(top: getheightScreen(40)),
                  // color: Colors.black,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,


                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.trailing,
                          ],
                        ),





                      ],
                    ),

                ),
              Container(
                padding:  widget.isHome==false? EdgeInsets.only(bottom: getheightScreen(30)):EdgeInsets.zero,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyTexts(
                      text: widget.title,
                      size: widget.isAnalysis==false? 23:19,
                      color: Colors.white,

                    ),
                    widget.isHome==true?Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        // height: getheightScreen(60),
                          margin: EdgeInsets.only(left: 40),
                          padding: EdgeInsets.only(bottom: widget.isHome==false?50:10, right: 50),
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          child: widget.SearchText
                      ),
                    ):SizedBox(),
                  ],
                ),
              ),            ],
          ),
            // actions: [
            //   Padding(
            //     padding: EdgeInsets.only(right: 10),
            //     child:  widget.trailing,
            //   ),
            // ],
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(50),
        ),
      ),


      backgroundColor: Colors.white,

    );
  }
}

