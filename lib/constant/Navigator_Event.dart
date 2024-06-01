import 'package:flutter/material.dart';


pushNavigator(pageName ,BuildContext context){
  Navigator.push(context,
      MaterialPageRoute(builder: (context)=>pageName)
  );
}

popNavigator(BuildContext context){
  Navigator.pop(context);
}