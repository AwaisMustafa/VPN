import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhiteAppCustomButton extends StatelessWidget {
  const WhiteAppCustomButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity.w,
      height: 53.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: primaryColor),
      ),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: primaryColor,
        ),
      ),
    );
  }
}
