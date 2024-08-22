import 'package:flutter/material.dart';
import 'package:super_star_live/Controller/Components/My-Column.dart';
import 'package:super_star_live/Controller/Components/Mybutton.dart';
import 'package:super_star_live/Controller/Components/Mytext.dart';
import 'package:super_star_live/Controller/Constant/Colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController mobilenumbercontroller=TextEditingController();
  TextEditingController adresscontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwodcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightgray,
      appBar: AppBar(
        backgroundColor: Appcolors.lightgray,
      ),
      body: Center(child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Mytext(text: 'Create an account',fontWeight: FontWeight.bold,),
            ],
          ),
          SizedBox(height: 20,),
          CircleAvatar(
            radius: 50,
            child: Stack(children: [
             Image(image: AssetImage('assets/camera.png'))
            ],),
          ),
          SizedBox(height: 20,),
          Mycolumn(name: 'Name', hinttext: 'Enter your name', controller: namecontroller),
          SizedBox(height: 20,),
          Mycolumn(name: 'Mobile Number', hinttext: 'Enter your Mobile number', controller: mobilenumbercontroller),
          SizedBox(height: 20,),
          Mycolumn(name: 'Adress', hinttext: 'Enter your Adress', controller: adresscontroller),
          SizedBox(height: 20,),
          Mycolumn(name: 'Email', hinttext: 'Enter your Email', controller: emailcontroller),
          SizedBox(height: 20,),
          Mycolumn(name: 'Password', hinttext: 'Enter your Password', controller: passwodcontroller),
          SizedBox(height: 20,),
          Mybutton(text: 'Sign up', width: 328,color: Appcolors.purple,
              ontab: (){})
        ],),
      ),),
    );
  }
}
