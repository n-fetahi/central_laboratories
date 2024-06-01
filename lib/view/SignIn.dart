import 'package:central_laboratories/constant/constant.dart';
import 'package:central_laboratories/view/home.dart';
import 'package:flutter/material.dart';
import 'package:central_laboratories/constant/SizeOfConfig.dart';
import 'package:central_laboratories/view/SignUp.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../constant/Navigator_Event.dart';
import '../constant/myTexts.dart';
import '../local/AppTranslationController.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}
class StartState extends State<SignIn> {

  String ? email;
  String ? password;
  String  errorText='';

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  AppTranslationController controller=Get.find();

  initWidget() {
    SizeOfConfig().init(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: getheightScreen(250),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60)),
                    color: Color(0xFF354A73),
                    gradient: LinearGradient(colors: [(Color(0xFF8998C9)),Color(0xFF354A73)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Image.asset(
                              "assets/Welcome/Wel(2).webp",
                              height: 90,
                              width: 90,
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              child: MyTexts(
                                text: "1".tr,
                                size: 25,
                                color: Colors.white,

                              )
                          )
                        ],
                      )
                  ),
                ),

                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Color(0xffEEEEEE)
                            ),
                          ],
                        ),
                         child:
                            TextField(
                            cursorColor: Color(0xffF5591F),
                            decoration: InputDecoration(
                              focusColor: Color(0xffF5591F),
                              icon: Icon(
                                Icons.email,
                                color: Color(0xFF050B1E),
                              ),
                              hintText: "2".tr,
                              hintStyle: TextStyle(
                                fontFamily: 'Cairo'
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                        ),

                      ),

                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffEEEEEE),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 20),
                                blurRadius: 100,
                                color: Color(0xffEEEEEE)
                            ),
                          ],
                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextField(

                            cursorColor: Color(0xffF5591F),
                            decoration: InputDecoration(
                              focusColor: Color(0xffF5591F),
                              icon: Icon(
                                Icons.vpn_key,
                                color: Color(0xFF050B1E),
                              ),
                              hintText: "3".tr,
                              hintStyle: TextStyle(
                                  fontFamily: 'Cairo'
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          )
                      );
                    },
                    child: MyTexts(
                      text: "4".tr,
                      size: 13,
                      color: primaryColor,

                    ),
                  ),
                ),


                GestureDetector(
                  onTap: () {

                  pushNavigator(Home(),context);


                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [(Color(0xFF8998C9)),Color(0xFF354A73)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)
                        ),
                      ],
                    ),
                    child: MyTexts(
                    text: "5".tr,
                      size: 17,
                      color: Colors.white,

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                  MyTexts(
                          text: "6".tr,
                          size: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,

                        ),
                      GestureDetector(
                        child: MyTexts(
                          text: "7".tr,
                          size: 13,
                          color: Color(0xFF354A73),

                        ),
                        onTap: () {
                          // Write Tap Code Here.
                          pushNavigator(SignUp(),context);
                        },
                      ),

                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}