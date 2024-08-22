import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  String text;
  double height;
  double width;
  double bordercircular;
  double fontsize;
  Color  color;
  Color  fontcolor;
  FontWeight fontWeight;
  VoidCallback ontab;

  Mybutton({super.key,
    required this.text,
    this.color=Colors.purple,
    this.width=150,
    this.height=50,
    this.fontcolor=Colors.white,
    this.fontWeight=FontWeight.bold,
    this.fontsize=20,
    this.bordercircular=30,
    required this.ontab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Container(
          height:height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(bordercircular),
          ),
          child: Center(child: Text(text,style: TextStyle(
            fontSize: fontsize,
            color: fontcolor,
            fontWeight: fontWeight,
          ),),)
      ),
    );
  }
}
