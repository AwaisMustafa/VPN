import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 80.h),
          child: Text(
            'VPN',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 28.sp,
            ),
          ),
        ),
        Image(
          image: AssetImage(
            'assets/images/onboarding3.png',
          ),
          width: 283.w,
          height: 272.h,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            'Access to multiple servers',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40, left: 40),
          child: Text(
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: secondaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
        ),
    );

  }
}
