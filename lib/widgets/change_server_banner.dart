import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

class ChangeServerBanner extends StatelessWidget {
  const ChangeServerBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 71.h,
      decoration: BoxDecoration(
        border: Border.all(width: 1.w, color: primaryColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 25.w,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            // backgroundColor: Color(0xffF8D000),
            radius: 22.r,
            child: SvgPicture.asset(
              'assets/icons/unitedstates.svg',
              width: 40.w,
              height: 40.h,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'United States',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                ),
              ),
              Text(
                'Auto location',
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            'Change',
            style: GoogleFonts.montserrat(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: primaryColor,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20.sp,
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
