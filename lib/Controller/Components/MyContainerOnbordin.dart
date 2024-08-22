import 'package:flutter/material.dart';
import 'package:super_star_live/Controller/Constant/Colors.dart';
import 'package:super_star_live/Controller/Constant/images.dart';

class OnbordinContainer extends StatelessWidget {
  double height;
  double width;
  String image;
  String iconimage;
  OnbordinContainer({super.key,
    required this.image,
    required this.iconimage,
    this.height=430,
    this.width=400,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 443,
          width: 450,
          decoration: BoxDecoration(
            color: Appcolors.lightgray,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(500),bottomRight: Radius.circular(500)),
          ),
        ),
        Container(
          height: height,
          width: width,
          child: Image.asset(image,fit: BoxFit.fill,),

        ),
        Positioned(
            left: 80,top: 100,
            child: Image(image: AssetImage(Appimages.vector1))),
        Positioned(
            left: 300,top: 100,
            child: Image(image: AssetImage(Appimages.vector2))),
        Positioned(
            left: 80,top: 250,
            child: Image(image: AssetImage(Appimages.vector3))),
        Positioned(
            left: 300,top: 250,
            child: Image(image: AssetImage(Appimages.vector4))),

        Positioned(
          left: 280,top: 350,
          child: Container(
           height: 90,
            width: 90,
           decoration: BoxDecoration(
             color: Appcolors.purple,
             borderRadius: BorderRadius.circular(100)
           ),
            child: Image.asset(iconimage,fit: BoxFit.none,),
          ),
        )
      ],
    );
  }
}
