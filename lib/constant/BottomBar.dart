import 'package:flutter/material.dart';

import '../view/home.dart';
import 'Navigator_Event.dart';
import 'SizeOfConfig.dart';
import 'constant.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key, this.BottomNum, this.CallBack}) : super(key: key);
  final int? BottomNum;
  final Function? CallBack;

  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);
    final bottoms=[
      Icons.home,
      // Icons.search,
      // Icons.abc_outlined,
      //Icons.ac_unit,
    ];
    return Container(
      color: primaryColor,
      child: SizedBox(
        width: SizeOfConfig.widthScreen,
        height: getheightScreen(60),
        child: ListView.separated(
            //separatorBuilder: ,
            //itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) => GestureDetector(
              child: Container(
                width: (SizeOfConfig.widthScreen) / bottoms.length,
                decoration: BottomNum == index ? const BoxDecoration(
                  border: Border(
                    bottom: borderStyle,
                    top: borderStyle,
                    left: borderStyle,
                    right: borderStyle,
                  )
                ) : null,

                child: Container(
                  height: 0,
                  width: getWidthScreen(100),
          margin: EdgeInsets.symmetric(horizontal: SizeOfConfig.widthScreen/3,vertical: getheightScreen(10)),
          padding: EdgeInsets.symmetric(horizontal: getWidthScreen(15)),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(
          color: Colors.black12
          )
          ),
                  child: Icon(
                    bottoms[index],
                    size: BottomNum == index ? 35 : 30,
                    color:
                    BottomNum == index ? Colors.white :primaryColor,
                  ),
                ),
              ),
              onTap: () {
                pushNavigator(Home(), context);

              },
            ),
          separatorBuilder: ( _ ,index) => Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: Colors.white)
              )
            ),
            width: 5,
          ),
          itemCount: bottoms.length,
        ),
      ),
    );
  }
}
