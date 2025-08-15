import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'VPN',
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w700,
          // fontSize: 16,
        ),
      ),
      centerTitle: true,
      actions: [Icon(CupertinoIcons.person)],
      actionsPadding: EdgeInsets.only(right: 25.w),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
