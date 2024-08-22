import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_star_live/Controller/Components/InterestContainer.dart';
import 'package:super_star_live/Controller/Components/My-Column.dart';
import 'package:super_star_live/Controller/Components/Mybutton.dart';
import 'package:super_star_live/Controller/Components/Mytext.dart';
import 'package:super_star_live/Controller/Constant/Colors.dart';
import 'package:super_star_live/Controller/Constant/images.dart';
import 'package:super_star_live/views/auth/Sign-In.dart';

class InterestPage extends StatelessWidget {
  const InterestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
           Padding(
             padding: const EdgeInsets.only(top: 100),
             child: Column(children: [
               Mytext(text: 'Choose you are interested in',fontsize: 25,fontcolor: Appcolors.purple,),
               SizedBox(height: 10,),
               Mytext(text: '"Select your preferred category to tailor your\n'
                   '    experience: Date, Nearby, or Artist. Your\n'
                   '                 interests, your choice!"',fontsize: 14,fontWeight: FontWeight.bold,),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   InterestContainer(image: Appimages.interest1, text: "Date",color: Appcolors.purple,),
                   SizedBox(width: 20,),
                   InterestContainer(image: Appimages.interest2, text: "Nearby",color: Appcolors.lightgray,),
                   SizedBox(width: 20,),
                   InterestContainer(image: Appimages.interest3, text: "Artist",color: Appcolors.lightgray,),
                 ],),
             ],),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 120),
             child: Column(children: [
               Mybutton(text: "Get Start", color: Appcolors.purple,width: 188,height: 43,
                   ontab: (){
                 Get.to(()=>SignIn(),transition: Transition.rightToLeftWithFade,duration: Duration(milliseconds: 2000));
                   }),
             ],),
           )
        ],),
      ),),
    );
  }
}
