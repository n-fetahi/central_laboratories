import 'package:central_laboratories/constant/myTexts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/BottomBar.dart';
import '../constant/MyAppBar.dart';
import '../constant/SizeOfConfig.dart';
import '../constant/constant.dart';
import '../constant/logo.dart';
import '../local/AppTranslationController.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String groupLan='ar';
  String groupMode='light';
  int count=0;
  @override
  AppTranslationController controller=Get.find();
  Widget build(BuildContext context) {

    SizeOfConfig().init(context);

    return Scaffold(
      bottomNavigationBar: BottomBar(),

      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(getheightScreen(300)),
        child: MyAppBar(

          title: '2'.tr,

          isHome: true,
          SearchText: Directionality(
            textDirection: TextDirection.rtl,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.only(top: 5),
              accountName: Text('Khaled.Kaid'),
              accountEmail: Text('KhaledKaid3@gmail.com'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primaryColor,
              ),
              currentAccountPictureSize: Size(70,70),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('assets/otherImages/man.png'),
              ),

            ),
          ),
          trailing: logo(context),

        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getheightScreen(10),),
      child: Column(
        children: [
          paymantRadioButton('اللغة','noor'),
          // paymantRadioButton('الوضع','المظلم','الطبيعي','noor'),
        ],
      ),
      ),
    );
  }
  Widget paymantRadioButton(String title,String value) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: getheightScreen(10)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: thirdColor,
          border: Border.all(
              color: Colors.black12
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(top: getheightScreen(10),right: getWidthScreen(10)),
            padding: EdgeInsets.symmetric(horizontal: getWidthScreen(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primaryColor,
                border: Border.all(
                    color: Colors.black12
                )
            ),
            child: MyTexts(

                text: title,
                size: 15,
              color: Colors.white,

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: getWidthScreen(120),
                child: RadioListTile(

                  controlAffinity: ListTileControlAffinity.trailing,
                  activeColor: primaryColor,
                  title: Text('English',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo'
                    ),
                  ),

                  value: 'en',
                  groupValue: groupLan,
                  onChanged: (val){
                    setState(() {

                      groupLan=val.toString();
                      controller.changeLang(val.toString());


                    });
                  },
                ),
              ),
              Container(
                width: getWidthScreen(120),
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  activeColor: primaryColor,
                  title:
                    Text('العربية',
                      style: TextStyle(
                        fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo'
                      ),
                    ),


                  value: 'ar',
                  groupValue: groupLan,
                  onChanged: (val){
                    setState(() {
                      controller.changeLang(val.toString());

                      groupLan=val.toString();

                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
