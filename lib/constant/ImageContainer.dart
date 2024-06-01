import 'package:flutter/material.dart';

import 'SizeOfConfig.dart';


class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key, this.radius, required this.width, required this.height, required this.imageName,}) : super(key: key);
  final double ?radius;
  final double width;
  final double height;
  final String imageName;



  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);
    return ClipRRect(

      borderRadius: BorderRadius.circular(30),

      child: Image.asset(imageName,
        width: getWidthScreen(width),
        height: getheightScreen(height),
        // fit: BoxFit.cover,

      ),
    );
  }
}
