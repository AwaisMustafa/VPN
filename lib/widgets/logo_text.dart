import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

class LogoText extends StatelessWidget {
  const LogoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'LOGO',
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 50.sp,
        color: primaryColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}
