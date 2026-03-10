import 'package:flutter/material.dart';
import 'package:islami/core/splash/splash_view.dart';

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
      home: SplashView(),

//<item name="android:windowBackground">#000000</item>


    );
  }
}