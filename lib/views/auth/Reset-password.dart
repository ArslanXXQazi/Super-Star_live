import 'package:flutter/material.dart';
import 'package:super_star_live/Controller/Components/My-Column.dart';
import 'package:super_star_live/Controller/Components/Mybutton.dart';
import 'package:super_star_live/Controller/Components/Mytext.dart';
import 'package:super_star_live/Controller/Constant/Colors.dart';

class ResetpasswordScreen extends StatefulWidget {
  const ResetpasswordScreen({super.key});

  @override
  State<ResetpasswordScreen> createState() => _ResetpasswordScreenState();
}

class _ResetpasswordScreenState extends State<ResetpasswordScreen> {
  TextEditingController newpasswordcontroller=TextEditingController();
  TextEditingController confirmpasswordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightgray,
      appBar: AppBar(
        backgroundColor: Appcolors.lightgray,
      ),
      body: Center(child:
      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
         Column(children: [
           Mytext(text: 'Reset Password',fontsize: 24,fontWeight: FontWeight.bold,),
           SizedBox(height: 20,),
           Mycolumn(name: 'New Password', hinttext: 'Enter your password',controller: newpasswordcontroller,),
           SizedBox(height: 20,),
           Mycolumn(name: 'Confirm Password', hinttext: 'Enter your password',controller: confirmpasswordcontroller,),
         ],),
          SizedBox(height: 30,),
          Mybutton(text: 'Continue', ontab: (){},color: Appcolors.purple,width: 328,),
        ],),
      ),),
    );
  }
}
