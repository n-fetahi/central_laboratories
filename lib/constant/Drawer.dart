import 'package:central_laboratories/constant/constant.dart';
import 'package:central_laboratories/view/Settings.dart';
import 'package:flutter/material.dart';

import '../view/home.dart';
import 'Navigator_Event.dart';

class BulidDrawer extends StatefulWidget {
  BulidDrawer({Key? key}) : super(key: key);

  @override
  State<BulidDrawer> createState() => _BulidDrawerState();
}

class _BulidDrawerState extends State<BulidDrawer> {
  final List<Map> listTitle=[
    {'icon':Icons.search,'title':'بحث','index':0},
    {'icon':Icons.settings,'title':'الإعدادات','index':1},
    {'icon':Icons.help,'title':'مساعدة','index':3},
    {'icon':Icons.code,'title':' مطوري البرنامج','index':4},
    {'icon':Icons.bloodtype,'title':'حول المختبرات المركزية','index':2},
    {'icon':Icons.output,'title':'تسجيل الخروج','index':5},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFFC3CCEA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text('Khaled.Kaid'),
            accountEmail: Text('KhaledKaid3@gmail.com'),
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/otherImages/man.png'),
            ),
          ),
          Divider(color: primaryColor.withOpacity(0.5),thickness: 20,),
          Expanded(
            child: ListView(
                children:
                listTitle.map((Map tile) => buildListTile(tile['title'],tile['icon'],tile['index'],context)).toList()
            ),
          ),
        ],
      ),
    );
  }

  ListTile buildListTile(String title,IconData icon,int index,BuildContext context) {
    return ListTile(

      title: Text(title,
        style: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: primaryColor
        ),
      ),
      leading: Icon(icon,color: primaryColor,),
      ///trailing: Icon(Icons.restaurant,color: Colors.black,),
      ///subtitle: Text('descrebtion'),
      onTap: (){
        switch(title){
          case 'بحث':;break;
          case 'الإعدادات':
            print(index);
            pushNavigator(Settings(),context);
          ;break;
        }
      },
    );
  }
}