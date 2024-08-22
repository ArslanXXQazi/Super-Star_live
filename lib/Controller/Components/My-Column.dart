import 'package:flutter/material.dart';
import 'package:super_star_live/Controller/Components/Mytext.dart';


class Mycolumn extends StatelessWidget {
  String name;
  String hinttext;
  Color  color;
  double bordercircular;
  TextEditingController controller;
   Mycolumn({super.key,
     required this.name,
     required this.hinttext,
     this.color=Colors.white,
     this.bordercircular=20,
     required this.controller,
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Mytext(text: name,fontWeight: FontWeight.bold,fontsize: 14,),
      SizedBox(height: 5,),
      Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(bordercircular),
        ),
        child:Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hinttext,
            ),
          ),
        ),
      )
    ],);
  }
}
