import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../radio/radio_screen.dart';
import 'Onbarding4.dart';
import 'Onboarding5.dart';
import 'onbarding3.dart';
import 'onboarding2.dart';
import 'onbording1.dart';

class Onboarding extends StatefulWidget {
  Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                Onboarding1(),
                Onboarding2(),
                Onboarding3(),
                Onboarding4(),
                Onboarding5(),
              ],
            ),

            Positioned(
              bottom: 10,
              left: 20,
              right: 20,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: _currentPage > 0 ? 1.0 : 0.0,
                    child: TextButton(
                      onPressed: _currentPage > 0
                          ? () => _pageController.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            )
                          : null,
                      child: const Text(
                        "Back",
                        style: TextStyle(color: Color(0xffE2BE7F)),
                      ),
                    ),
                  ),

                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 5,
                    effect: const WormEffect(
                      activeDotColor: Color(0xffE2BE7F),
                      dotColor: Colors.grey,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      if (_currentPage == 4) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RadioScreen(),
                          ),
                        );
                        print("Go to Home Screen!");
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text(
                      _currentPage == 4 ? "Finish" : "Next",
                      style: const TextStyle(color: Color(0xffE2BE7F)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
