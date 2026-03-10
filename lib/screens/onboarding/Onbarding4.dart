import 'package:flutter/material.dart';

import '../../core/assets/App_assets.dart';
import '../../core/assets/App_string.dart';

class Onboarding4 extends StatelessWidget{
  const Onboarding4({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Color(0xff202020),
       body: Stack(children: [
         Image.asset(AppAssets.Mosque_splash),
         Positioned(top: 90, left: 60, child: Image.asset(AppAssets.Islami)),

         Image.asset(AppAssets.Mosque_splash),
         Positioned(top: 90, left: 60, child: Image.asset(AppAssets.Islami)),

         Center(
           child: Image.asset(AppAssets.doaa, width: 300, height: 260),
         ),
         SizedBox(height: 60),
         Positioned(
           bottom: 120,
           left:125,
           child: Text(
             AppString.bBearish,
             style: TextStyle(
               fontWeight: FontWeight.w500,
               fontSize: 25,
               color: Color(0xffE2BE7F),
             ),
           ),
         ),
         Positioned(
           bottom: 80,
           left:35,
           child: Text(
             AppString.name,
             style: TextStyle(
               fontWeight: FontWeight.w400,
               fontSize: 15,
               color: Color(0xffE2BE7F),
             ),
           ),
         ),

       ]

       )


   );
  }



}