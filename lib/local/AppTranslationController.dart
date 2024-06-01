import 'package:central_laboratories/main.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class AppTranslationController extends GetxController{

  Locale initLang=sharepref!.getString('lang') == null  ? Locale("ar")  :  Locale(sharepref!.getString('lang')!);
  // Locale? initLang=sharepref!.getString('lang') == null  ?  Get.deviceLocale   :  Locale(sharepref!.getString('lang')!);

void changeLang(String codeLang){
  Locale local =Locale(codeLang);
  sharepref!.setString('lang', codeLang);
  Get.updateLocale(local);

}
}