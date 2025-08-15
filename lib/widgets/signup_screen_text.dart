import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

class SignupScreenText extends StatelessWidget {
  const SignupScreenText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Signup now to access faster internet more than 120+ location.',
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: secondaryColor,
      ),
    );
  }
}
