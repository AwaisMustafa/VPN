import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/profile_navbar.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> pText = [
      'Restore Purchase',
      'Profile/Installation',
      'Can’t Connect',
      'Live Chat',
      'Email Support',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'SUPPORT',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      bottomNavigationBar: ProfileNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: List.generate(5, (index) {
              return Container(
                padding: EdgeInsets.only(top: 5.h),
                margin: EdgeInsets.all(5),
                width: double.infinity.w,
                height: 56.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(118, 116, 132, 0.1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        pText[index],
                        // 'Account',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      // SizedBox(width: 30.w),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
