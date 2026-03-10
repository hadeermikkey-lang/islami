import 'package:flutter/material.dart';

import '../../core/assets/App_assets.dart';
import '../../core/assets/App_string.dart';

class Onboarding1 extends StatelessWidget{
  const Onboarding1({super.key});

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
    child: Image.asset(AppAssets.welcom, width: 300, height: 260),
  ),
  SizedBox(height: 60),
  Positioned(
    bottom: 120,
    left: 35,
    child: Text(
      AppString.Welcome,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 25,
        color: Color(0xffE2BE7F),
      ),
    ),
  ),

  ]

),

    );
  }




}