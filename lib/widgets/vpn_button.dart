import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';

class VPNButton extends StatelessWidget {
  const VPNButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 250.w,
          height: 250.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: primaryColor.withOpacity(0.20),
            // color: Colors.blue.withOpacity(0.15),
          ),
        ),
        Container(
          width: 175.w,
          height: 175.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: primaryColor.withOpacity(0.35),
          ),
        ),
        Container(
          width: 105.w,
          height: 105.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: primaryColor,
          ),
          child: Icon(
            Icons.power_settings_new,
            color: Colors.white,
            size: 50.sp,
          ),
        ),
      ],
    );
  }
}
