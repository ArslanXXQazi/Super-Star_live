import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_star_live/Controller/Components/My-Column.dart';
import 'package:super_star_live/Controller/Components/My-icon-btn.dart';
import 'package:super_star_live/Controller/Components/Mybutton.dart';
import 'package:super_star_live/Controller/Components/Mytext.dart';
import 'package:super_star_live/Controller/Constant/Colors.dart';
import 'package:super_star_live/Controller/Constant/images.dart';
import 'package:super_star_live/views/auth/Reset-password.dart';
import 'package:super_star_live/views/auth/Sign-up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightgray,
      body: Center(child:
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image(image: AssetImage(Appimages.star),width: 120),
            SizedBox(height: 30,),
            Mytext(text: 'Let’s sign you in.',fontsize: 24,fontWeight: FontWeight.bold,),
              SizedBox(height: 20,),
            Mytext(text: ' Sign in with your data that you have\n     entered during your registration',fontsize: 16,),
            SizedBox(height: 20,),
            Mycolumn(name: "Email", hinttext: 'Enter your Email',controller: emailcontroller,),
            SizedBox(height: 10,),
            Mycolumn(name: "Password", hinttext: 'Enter your Password',controller: passwordcontroller,),
           Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(onPressed: (){
                Get.to(()=>ResetpasswordScreen(),transition: Transition.rightToLeftWithFade,duration: Duration(milliseconds: 2000));
              }, child: Mytext(text: 'Forget password?',fontsize: 12,fontWeight: FontWeight.bold,))
            ],),
            SizedBox(height: 20,),
            Mybutton(text: 'Sign in', color: Appcolors.purple,width: 328,
                ontab: (){
                  Get.to(()=>SignupScreen(),transition: Transition.rightToLeftWithFade,duration: Duration(milliseconds: 2000));
                }),
              SizedBox(height: 20,),
              Mybutton1(text: 'Sign in with Facebook', image: Appimages.facebook1, ontab: (){},color: Appcolors.lightgray,),
              SizedBox(height: 20,),
              Mybutton1(text: ' Sign in with Google', image: Appimages.google1, ontab: (){},color: Appcolors.lightgray,),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Mytext(text: 'Don’t have an account?',fontcolor: Colors.grey,fontWeight: FontWeight.bold,fontsize: 14,),
                  Mytext(text:' Register',fontWeight: FontWeight.bold,fontsize: 15,)
               // TextButton(onPressed: (){}, child: Mytext(text:'Register',fontWeight: FontWeight.bold,fontsize: 15,))
              ],)
          ],),
        ),
      ),),
    );
  }
}
