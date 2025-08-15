import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../screens/splash_onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Center(
              child: Column(
                spacing: 150.h,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 200.h),
                    child: Text(
                      'LOGO',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 65.sp,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  CircularProgressIndicator(
                    color: Colors.black,
                    backgroundColor: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: Text(
                      'v 1.0.0.1',
                      style: GoogleFonts.notoSans(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: secondaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
