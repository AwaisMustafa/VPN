import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

class FreeServersBanner extends StatelessWidget {
  const FreeServersBanner({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 63.h,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: borderColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10.w,
            children: [
              SizedBox(width: 10.w),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 22.r,
                child: SvgPicture.asset(
                  'assets/icons/unitedstates.svg',
                  width: 35.w,
                  height: 35.h,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    '192.168.0.1',
                    style: GoogleFonts.montserrat(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                'assets/icons/signal.svg',
                width: 20.w,
                height: 15.h,
              ),
              SizedBox(width: 5.w),
              Padding(
                padding: EdgeInsets.only(bottom: 5.h, right: 10.w),
                child: Text(
                  '9ms',
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      fontSize: 10.sp,
                      color: secondaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
