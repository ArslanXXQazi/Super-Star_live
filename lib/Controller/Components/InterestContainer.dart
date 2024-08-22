import 'package:flutter/material.dart';
import 'package:super_star_live/Controller/Components/Mytext.dart';
import 'package:super_star_live/Controller/Constant/Colors.dart';
import 'package:super_star_live/Controller/Constant/images.dart';
class InterestContainer extends StatelessWidget {
  String text;
  String image;
  double height;
  double width;
  double bordercircilar;
  Color  color;
   InterestContainer({super.key,
     required this.image,
     required this.text,
     this.color=Colors.grey,
     this.width=90,
     this.height=108,
     this.bordercircilar=10,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(bordercircilar),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Container(
          height: 55,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Image.asset(image),
        ),
        Mytext(text: text,fontsize: 12,fontWeight: FontWeight.bold,)
      ],),
    );
  }
}
