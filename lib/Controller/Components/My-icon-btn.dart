import 'package:flutter/material.dart';
import 'package:super_star_live/Controller/Components/Mytext.dart';


class Mybutton1 extends StatelessWidget {
  String text;
  String image;
  double height;
  double width;
  double bordercircular;
  double fontsize;
  double borderwidth;
  Color  color;
  Color  fontcolor;
  Color  bordercolor;
  FontWeight fontWeight;
  VoidCallback ontab;

  Mybutton1({super.key,
    required this.text,
    required this.image,
    this.color=Colors.white,
    this.width=328,
    this.height=50,
    this.fontcolor=Colors.black,
    this.fontWeight=FontWeight.bold,
    this.fontsize=17,
    this.bordercircular=30,
    required this.ontab,
    this.bordercolor=Colors.grey,
    this.borderwidth=1,
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
            border: Border.all(color:bordercolor ,width:borderwidth )
          ),
          child: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(9),
                child: Image(image: AssetImage(image),width: 50,),
              ),
              Text(text,style: TextStyle(
                fontSize: fontsize,
                color: fontcolor,
                fontWeight: fontWeight,
              ),),
            ],
          ),)
      ),
    );
  }
}
