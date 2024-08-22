import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_star_live/Controller/Components/MyContainerOnbordin.dart';
import 'package:super_star_live/Controller/Components/Mybutton.dart';
import 'package:super_star_live/Controller/Components/Mytext.dart';
import 'package:super_star_live/Controller/Constant/Colors.dart';
import 'package:super_star_live/Controller/Constant/images.dart';
import 'package:super_star_live/views/On-Bording-Screen/Interest-page.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  PageController _pageController=PageController();
  int _currentpage=0;

  void _onpage(int page){
    setState(() {
      _currentpage=page;
    });
  }

  void _nextpage(){
    if(_currentpage<2)
      {
        _pageController.animateToPage(_currentpage+1, duration:Duration(milliseconds: 200), curve: Curves.easeInOut);
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller:_pageController,
            onPageChanged: _onpage,
            children: [
              pageBuild(Appimages.onbordingpic1,Appimages.onbordingIcon1, 'Apply Filter Easily', 'Instantly Enhance Your Photos: One \n                Tap, Infinite Filters'),
              pageBuild(Appimages.onbordingpic2, Appimages.onbordingIcon2,'Tone Of Effects', 'Instantly Enhance Your Photos: One \n                Tap, Infinite Filters'),
              pageBuild(Appimages.onbordingpic1,Appimages.onbordingIcon3, '    Live Brodcast\nRewards & Eraning', 'Instantly Enhance Your Photos: One \n                Tap, Infinite Filters'),
            ],
          ),
        ],
      ),
    );
  }
  Widget pageBuild(String image,String iconimage,String text1,String text2)
  {
   return Column(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
    Stack(
      children: [
        OnbordinContainer(image: image,iconimage:iconimage ,),

      ],
    ),
    Column(
      children: [
        Mytext(text: text1,fontsize: 24,fontcolor: Appcolors.purple,fontWeight: FontWeight.bold,),
        Mytext(text: text2,fontsize: 16,fontWeight: FontWeight.bold,),
      ],),
    Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(children: [
        _currentpage!=2?Mybutton(text: "Next", ontab: (){_nextpage();},color: Appcolors.purple,width: 134,):
        Mybutton(text: 'Next', color: Appcolors.purple,
            ontab: (){
          Get.to(()=>InterestPage(),transition: Transition.rightToLeftWithFade,duration: Duration(milliseconds: 2000));
        })
      ],),
    )
    ],);
  }
}
