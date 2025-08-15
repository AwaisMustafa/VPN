import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../widgets/profile_navbar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> pText = [
      'About Indus Shield',
      'Privacy Policy',
      'Terms Of Service',
    ];
    return Scaffold(
      bottomNavigationBar: ProfileNavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'ABOUT',
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              Column(
                children: List.generate(3, (index) {
                  return Container(
                    padding: EdgeInsets.only(top: 5.w),
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
              Container(
                padding: EdgeInsets.only(top: 5.h),
                margin: EdgeInsets.all(5),
                width: double.infinity.w,
                height: 56.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(118, 116, 132, 0.1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'App Version',
                            // 'Account',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            'v 1.0.0.1',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 11.sp,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),

                      // SizedBox(width: 30.w),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
