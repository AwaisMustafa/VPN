import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../screens/auth/login_options_screen.dart';
import '../../widgets/default_app_custom_button.dart';
import '../../widgets/onboarding_screen1.dart';
import '../../widgets/onboarding_screen2.dart';
import '../../widgets/onboarding_screen3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;

  void nextPage() {
    if (currentIndex < 2) {
      pageController.animateToPage(
        currentIndex + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                controller: pageController,
                children: [
                  OnboardingScreen1(),
                  OnboardingScreen2(),
                  OnboardingScreen3(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? primaryColor
                        : Color(0xffC6DCFF),
                  ),
                );
              }),
            ),
            SizedBox(
              height: 40.h,
            ),
            InkWell(
              onTap: () {
                currentIndex == 2
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginOptionsScreen(),
                        ),
                      )
                    : nextPage();
              },
              child: DefaultAppCustomButton(
                text: currentIndex == 2 ? 'Get Started' : 'Next',
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      )),
    );
  }
}
