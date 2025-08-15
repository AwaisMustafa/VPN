import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

class BestServersBanner extends StatelessWidget {
  const BestServersBanner({super.key, required this.logo, required this.text});
  final String logo;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 63.h,
      decoration: BoxDecoration(
        border: Border.all(width: 1.w, color: borderColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 10.w,
            children: [
              SizedBox(width: 10.w),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 22.r,
                child: SvgPicture.asset(
                  logo,
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
                'assets/icons/signal_full.svg',
                width: 20.w,
                height: 15.h,
              ),
              SizedBox(width: 5.w),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 5.0,
                  right: 10,
                ),
                child: Text(
                  '5ms',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontSize: 10.sp,
                    color: secondaryColor
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
