import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

class GoPremiumBanner extends StatelessWidget {
  const GoPremiumBanner({
    super.key,
  });

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
            backgroundColor: Color(0xffF8D000),
            radius: 22.r,
            child: SvgPicture.asset(
              'assets/icons/premium.svg',
              width: 25.w,
              height: 25.h,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Go Premium',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 16. sp,
                ),
              ),
              Text(
                'To unlock high speed connection',
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_rounded, size: 20.sp),
        ],
      ),
    );
  }
}
