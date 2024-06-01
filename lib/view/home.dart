import 'package:central_laboratories/constant/DefultButton.dart';
import 'package:central_laboratories/constant/MyAppBar.dart';
import 'package:central_laboratories/constant/constant.dart';
import 'package:flutter/material.dart';

import '../constant/BottomBar.dart';
import '../constant/Drawer.dart';
import '../constant/ImageContainer.dart';
import '../constant/Navigator_Event.dart';
import '../constant/SearchText.dart';
import '../constant/SizeOfConfig.dart';
import '../constant/logo.dart';
import '../constant/myTexts.dart';
import 'SignUp.dart';
import 'analysisDetails.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List analysislist=[
    'الكل',
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'G', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
  ];
  List analysisDatalist=[
    [
      {'title':'Acetaminophen','price':20.0},
      {'title':'Acetylcholine Receptor','price':20.0},
      {'title':'Adenosine Deaminase','price':20.0},
      {'title':'Adrenocorticotropic Hormone','price':20.0},
      {'title':'Albumin Blood Test','price':20.0},
      {'title':'Aldosterone and Renin','price':20.0},
      {'title':'Alkaline Phosphatas','price':20.0},
      {'title':'Alpha Fetoprotein','price':20.0},
      {'title':'ALT Blood Test','price':20.0},
      {'title':'AMH','price':20.0},
      {'title':'Amylase Test','price':20.0},
      {'title':'ANA','price':20.0},
      {'title':'ANCA','price':20.0},



    ],
    [
      {'title':'Bacteria Culture Test','price':20.0},
      {'title':'Beta 2 Microglobulin','price':20.0},
      {'title':'Beta-2 Microglobulin Tumor Marker','price':20.0},
      {'title':'Bilirubin Blood Test','price':20.0},
      {'title':'Bilirubin in Urine','price':20.0},
      {'title':'Blood Alcohol Level','price':20.0},
      {'title':'Blood Glucose Test','price':20.0},
      {'title':'Blood in Urine','price':20.0},
    ]

  ];
  List<Map> listview=[];
  bool flage=false;
  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);
    if(flage==false)
     listview=analysisDatalist[0]+analysisDatalist[1];
    return Scaffold(
      drawer: BulidDrawer(),
      bottomNavigationBar: BottomBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(getheightScreen(170)),
      child: MyAppBar(

        title: 'الرئيسية',

        isHome: true,
        SearchText: SearchText(
            press: (value){

            }),
        trailing: logo(context),

      ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: getheightScreen(20)
          ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: SizeOfConfig.widthScreen/2-getWidthScreen(15),


                      child: DefultButton(
                        press: (){},
                        text: 'الباقات',
                        backgroundColor: primaryColor,
                      ),
                    ),
                    Container(
                      width: SizeOfConfig.widthScreen/2-getWidthScreen(15),

                      child: DefultButton(
                        press: (){},
                        text: 'التحاليل',
                        backgroundColor: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                  height: getheightScreen(10),
                ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(5),
                height: getheightScreen(45),
                margin: EdgeInsets.only(bottom: getheightScreen(5)),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.separated(
                    //separatorBuilder: ,
                    //itemCount: 4,
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (context,index) => InkWell(
                      child: buildnNmbering(analysislist[index],index==0?false:true,context),
                      onTap: () {
                        setState((){
                          if (index==0)
                            flage=false;
                          else{
                            listview=analysisDatalist[index-1];
                            flage=true;
                          }


                        });
                      },
                    ),
                    separatorBuilder: ( _ ,index) => const SizedBox(
                      width: 5,
                    ),
                    itemCount: analysislist.length,
                  ),
                ),
              ),
            Container(
              height: SizeOfConfig.heightScreen/1.5,
              child: ListView(
                children:
                  listview.map((e) => buildContainer(e['title'], e['price'], context)).toList()



              ),
            )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildnNmbering(String title,bool isSub,BuildContext context) {
    return Container(
                      padding: EdgeInsets.symmetric(horizontal: getWidthScreen(20),),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: isSub==true?primaryColor:Colors.white,
                          border: Border.all(
                              color: primaryColor
                          )
                      ),

                      child: MyTexts(
                        text: title,
                        size: 15,
                        color:isSub==true?Colors.white:primaryColor,

                      ),
                    );
  }

  Widget buildContainer(String title ,double price,BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Write Tap Code Here.
        pushNavigator(analysisDetails(title: title,),context);
      },
      child: Container(
                 height: getheightScreen(70),
                 margin: EdgeInsets.symmetric(vertical: getheightScreen(10)),
                 child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                        width: double.infinity,
                        height: double.infinity,
                        margin: EdgeInsets.only(right: getWidthScreen(20),),
                        padding: EdgeInsets.only(left: getheightScreen(10),right: getheightScreen(35),
                            ),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: thirdColor,
                          border: Border.all(
                            color: Colors.black12
                          )
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: MyTexts(
                              text: title,
                              size: 18,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getWidthScreen(45),
                      height: getheightScreen(70),
                        margin: EdgeInsets.symmetric(vertical: getheightScreen(8)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: primaryColor.withOpacity(0.3),
                            border: Border.all(
                                color: Colors.black12
                            ),

                        ),
                      child:  Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color:primaryColor,
                          border: Border.all(
                              color: Colors.black12
                          ),

                        ),
                        child: Center(
                          child: MyTexts(
                            text: '$price \$',
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      )
                      ,

                    )
                  ],
              ),
               ),
    );
  }



  Widget logoText(String name,double size,BuildContext context) {
    return Text(name,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: size
              ),
            );
  }
}
