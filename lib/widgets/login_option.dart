
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({super.key, required this.text, required this.logo, required this.bgColor, required this.textColor});

  final String text;

  final String logo;

  final Color bgColor;

  final Color textColor;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
      padding: EdgeInsets.all(7.w),
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          width: 1.w,
          // color: Color(0xffC2C5CA),
          color: Color(0xffC2C5CA),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 25.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 30.w,
          children: [
            SvgPicture.asset(
              logo,
              width: 32,
              height: 32,
            ),
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                color: textColor,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
