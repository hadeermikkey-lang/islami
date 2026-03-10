import 'package:flutter/material.dart';
import 'package:islami/core/splash/splash_view.dart';
import 'package:islami/screens/radio/radio_screen.dart';
import 'package:islami/screens/sibha/sibha.dart';

import 'core/splash/splash_view2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Islami",
      home://Sebha(),
      SplashView(),
       // RadioScreen(),
//<item name="android:windowBackground">#000000</item>


    );
  }
}