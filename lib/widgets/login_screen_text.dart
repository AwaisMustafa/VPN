import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

class LoginScreenText extends StatelessWidget {
  const LoginScreenText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Login now to access faster internet '
      'more than 120+ location.',
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: secondaryColor,
      ),
    );
  }
}
