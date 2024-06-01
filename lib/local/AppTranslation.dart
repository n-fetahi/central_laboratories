import 'package:get/get.dart';

class AppTranslation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "ar":{
      "1":"تسجيل الدخول",
      "2":"ادخل البريد الالكتروني",
      "3":"ادخل كلمة السر",
      "4":"هل نسيت كلمة السر؟",
      '5':'دخول',
      '6':'ألا تمتلك اي حساب من قبل؟  ',
      '7':'أنشئ حساب جديد',
    },
    "en":{
      "1":"Sign In",
      "2":"Enter the email",
      "3":"Enter the password",
      "4":"Forgot your password?",
      "5":"Login",
      "6":"Don't you have any account before?  ",
      "7":"Create a new account",
    }
  };

}