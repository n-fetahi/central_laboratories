import 'package:central_laboratories/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:central_laboratories/view/SignIn.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../constant/myTexts.dart';

class Welcome extends StatelessWidget {
  Welcome({Key? key, this.name, this.img}) : super(key: key);
  var name;
  var img;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        
        
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text('Write Title of Page',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App",
            image: Image.asset("assets/Intro/intro(1).jpeg",height: 225,width: 225,),
          ),
          PageViewModel(
            titleWidget: Text('Write Title of Page',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App",
            image: Image.asset("assets/Intro/intro(1).jpeg",height: 225,width: 225,),
          ),
          PageViewModel(
            titleWidget: Text('Write Title of Page',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App.Write description fo the App",
            image: Image.asset("assets/Intro/intro(1).jpeg",height: 225,width: 225,),
          ),
        ],
        onDone: (){
          Navigator.pushNamed(context,'SignIn');
        },
        onSkip: (){
          Navigator.pushNamed(context,'SignIn');
        },
        showSkipButton: true,
        skip: MyTexts(
          text: "تخطي",
          size: 16,
          color: primaryColor,

        ),
        next: InkWell(child: Icon(Icons.arrow_forward,color: primaryColor),
        onTap: (){

      },
        ),
        done: MyTexts(
          text: "تم",
          size: 16,
          color: primaryColor,

        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10.0),
          activeSize: Size(20.0,10.0),
          color: Colors.black26,
          activeColor: primaryColor,
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:layla_resturant/helpers/font_size.dart';
// import '../helpers/theme_colors.dart';
//
// class StartPage extends StatefulWidget{
//   const StartPage({Key? key}) : super(key: key);
//
//   @override
//   _StartPageState createState() => _StartPageState();
// }
// class _StartPageState extends State<StartPage>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(
//         //children: [],
//
//         Container(
//           //height: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors:[
//                 Colors.transparent,
//                 Colors.transparent,
//                 ThemeColors.scaffoldBgColor,
//               ],
//             ),
//           ),
//         ),
//         SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(32.0),
//             child: Column(
//               children: [Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 'LAYLA',
//                 style: TextStyle(
//                   color: ThemeColors.primaryColor,
//                   fontWeight: FontWeight.w600,
//                   fontSize: FontSize.xxxLarge,
//                   decoration: TextDecoration.underline,
//                 ),
//               ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
// class MainButton extends StatelessWidget{
//   final String text;
//   final Color? backgroundColor;
//   final Color? textColor;
//   const MainButton({Key? key,required this.text, this.backgroundColor,this.textColor,})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       height: 75,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: backgroundColor == null ? ThemeColors.primaryColor: backgroundColor,
//         borderRadius: BorderRadius.circular(28),
//       ),
//       child: Center(
//         child: Text( text,
//           style: TextStyle(
//             color: textColor == null ? ThemeColors.witheTextColor:textColor,
//             fontWeight: FontWeight.bold,
//             fontSize: 6,
//           ),
//         ),
//       ),
//     );
//   }
//   }