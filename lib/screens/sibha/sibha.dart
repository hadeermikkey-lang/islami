import 'package:flutter/material.dart';
import 'package:islami/core/assets/App_string.dart';

import '../../core/assets/App_assets.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int _selectedIndex = 0;
  int counter = 0;
  double rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(AppAssets.sipha_screen, fit: BoxFit.cover),
        ),
        Positioned(
          top: 30,
          left: 40,
          child: Image.asset(AppAssets.Mosque_splash),
        ),
        Positioned(top: 110, left: 100, child: Image.asset(AppAssets.Islami)),

        Positioned(
          top: 190,
          left: 60,
          child: Text(
            AppString.nameAlla,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Positioned(
          top: 234,
          left: 122,
          child: Image.asset(AppAssets.topSebha, height: 60, width: 100),
        ),
        Container(
          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const Spacer(),

              GestureDetector(
                onTap: () {
                  setState(() {
                    counter++;
                    rotationAngle += 0.2;
                    print("object");
                  });
                },
                child: AnimatedRotation(
                  turns: rotationAngle / 6.28,
                  duration: const Duration(milliseconds: 200),
                  child: Image.asset(
                    "assets/images/SebhaBody 1.png",
                    width: 240,
                  ),
                ),
              ),

              const SizedBox(height: 60),
            ],
          ),
        ),
        Positioned(
          top: 350,
          left: 125,
          child: Text(
            AppString.sobhan,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 410,
          left: 160,
          child: Text(
            " $counter",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
