import 'package:flutter/material.dart';
import 'package:islami/core/assets/App_assets.dart';
import 'package:islami/core/splash/splash_view2.dart';
import 'package:islami/screens/onboarding/onbording.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Onboarding();
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.splashScreen2
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
