// import 'package:flutter/material.dart';
//
// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);
//
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

import 'package:central_laboratories/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:central_laboratories/view/SignIn.dart';

import '../constant/Navigator_Event.dart';
import '../constant/SizeOfConfig.dart';
import '../constant/myTexts.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUp> {
  @override
  Widget build(BuildContext context) => initWidget();
  Widget initWidget() {
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
                              text: "إنشاء حساب",
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
                        child: TextField(
                          cursorColor: Color(0xffF5591F),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color:  Color(0xFF050B1E),
                            ),
                            hintText: "البريد الإلكتروني",
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
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Color(0xffEEEEEE),
                            ),
                          ],
                        ),
                        child: TextField(
                          cursorColor: Color(0xffF5591F),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.phone_android,
                              color:  Color(0xFF050B1E),
                            ),
                            hintText: "رقم الهاتف",
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
                        child: TextField(
                          cursorColor: Color(0xffF5591F),
                          decoration: InputDecoration(
                            focusColor: Color(0xffF5591F),
                            icon: Icon(
                              Icons.vpn_key_sharp,
                              color:  Color(0xFF050B1E),
                            ),
                            hintText: "كلمة السر",
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
                                color: Color(0xffEEEEEE),
                            ),
                          ],
                        ),
                        child: TextField(
                          cursorColor: Color(0xffF5591F),
                          decoration: InputDecoration(
                            focusColor: Color(0xffF5591F),
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xFF050B1E),
                            ),
                            hintText: "تأكيد كلمة السر",
                            hintStyle: TextStyle(
                                fontFamily: 'Cairo'
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    pushNavigator(Home(),context);

                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => The_Main(),
                    //     )
                    // );
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
                      text: "إنشاء حساب",
                      size: 17,
                      color: Colors.white,

                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: MyTexts(
                          text: "قم بتسجيل الدخول",
                          size: 13,
                          color: primaryColor,

                        ),
                        onTap: () {
                          pushNavigator(SignIn(),context);

                        },
                      ),
                     MyTexts(
                          text: "هل تمتلك أي حساب من قبل؟  ",
                          size: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,

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