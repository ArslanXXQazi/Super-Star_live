import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  String text;
  double fontsize;
  Color  fontcolor;
  FontWeight fontWeight;

  Mytext({super.key,
    required this.text,
    this.fontsize=15,
    this.fontcolor=Colors.black,
    this.fontWeight=FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontsize,
      color: fontcolor,
      fontWeight: fontWeight,
    ),);
  }
}
