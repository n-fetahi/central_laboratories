import 'package:central_laboratories/local/AppTranslation.dart';
import 'package:central_laboratories/local/AppTranslationController.dart';
import 'package:central_laboratories/view/Intro.dart';
import 'package:central_laboratories/view/Settings.dart';
import 'package:central_laboratories/view/SignUp.dart';
import 'package:central_laboratories/view/analysisDetails.dart';
import 'package:central_laboratories/view/home.dart';
import 'package:flutter/material.dart';
import 'package:central_laboratories/view/SignIn.dart';
import 'package:central_laboratories/view/SplashScreen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


SharedPreferences? sharepref;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharepref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTranslationController controller=Get.put(AppTranslationController());
    return GetMaterialApp(
      routes: {
        'SignIn':(context)=>SignIn(),
      },
      debugShowCheckedModeBanner: false,
      locale: controller.initLang,
      translations: AppTranslation(),
      home: SignIn(),
      //home: SplashScreen(),
    );
  }
}

class Themes{
  static ThemeData darkTheme=ThemeData.dark().copyWith(

  );
}