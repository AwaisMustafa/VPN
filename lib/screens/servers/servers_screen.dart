import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/best_servers_banner.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/free_servers_banner.dart';

class ServersScreen extends StatelessWidget {
  const ServersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> logo = [
      'assets/icons/canada.svg',
      'assets/icons/australia.svg',
      'assets/icons/japan.svg',
    ];

    List<String> bText = [
      'Canada',
      'Australia',
      'Japan',
    ];
    List<String> fText = [
      'LA, United States',
      'Florida, United States',
    ];

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      drawer: Drawer(),
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              spacing: 25.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity.w,
                  height: 57.h,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(118, 116, 132, 0.1),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xff767484),
                      ),
                      hintText: 'Search servers',
                      suffixIconColor: Color(0xff767484),
                      suffixIcon: Icon(CupertinoIcons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Free Servers',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Column(
                  children: List.generate(2, (index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
                      child: FreeServersBanner(
                        text: fText[index],
                      ),
                    );
                  }),
                ),
                Text(
                  'Best Servers',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                ),
                Column(
                  children: List.generate(3, (index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 8.w, bottom: 8.h),
                      child: BestServersBanner(
                        logo: logo[index],
                        text: bText[index],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
