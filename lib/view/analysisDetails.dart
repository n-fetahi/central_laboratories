import 'package:central_laboratories/constant/myTexts.dart';
import 'package:flutter/material.dart';
import '../constant/BottomBar.dart';
import '../constant/MyAppBar.dart';
import '../constant/SearchText.dart';
import '../constant/SizeOfConfig.dart';
import '../constant/constant.dart';
import '../constant/logo.dart';
class analysisDetails extends StatefulWidget {
  const analysisDetails({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<analysisDetails> createState() => _analysisDetailsState();
}

class _analysisDetailsState extends State<analysisDetails> {
  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomBar(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(getheightScreen(130)),
          child: MyAppBar(

            title: widget.title,
            isAnalysis: true,
            isHome: false,
          ),
        ),
      body:
      Padding(
        padding: EdgeInsets.only(left: getWidthScreen(20),right: getWidthScreen(20),top: getheightScreen(20)),

        child: Column(
          children: [
            buildQuestions('ماهو التحليل ومعلوماته ؟',(){},context),
            buildQuestions('حــجــز',(){

            },context),

            SizedBox(height: getheightScreen(50),),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      color: Colors.black, width: 1)),
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/otherImages/offering.jpg",
                    fit: BoxFit.cover,
                    height: 170,
                    width: 400,
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget buildQuestions(String title,Function() press,BuildContext context) {
    return GestureDetector(
      onTap: ()async{
      },
      child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: getheightScreen(10)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: thirdColor,
                  border: Border.all(
                      color: Colors.black12
                  )
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  title=='حــجــز' ? Container(
                      margin: EdgeInsets.only(right: getWidthScreen(4)),
                      width: getWidthScreen(50),
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(50)

                      ),
                      child: MyTexts(
                        text: 'قريباً',
                        size: 12,
                        color: Colors.white,
                      ),
                    ):SizedBox(),
                    MyTexts(
                      text: title,
                      size: 15,
                      color: primaryColor,
                    ),

                  ],
                ),
              ),
            ),
    );
  }
}
