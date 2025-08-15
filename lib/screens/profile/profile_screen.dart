import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../screens/about_us/about_us_screen.dart';
import '../../screens/premium/premium_screen.dart';
import '../../screens/settings/settings_screen.dart';
import '../../screens/support/support_screen.dart';
import '../../widgets/custom_bottom_navbar.dart';
import '../../widgets/white_app_custom_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> pText = ['Account', 'Setting', 'Support', ' About Us'];
  List<Widget> pNavigator = [
    ProfileScreen(),
    SettingsScreen(),
    SupportScreen(),
    AboutUsScreen(),
  ];
  bool showFirstWidget = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CustomBottomNavbar(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SafeArea(
              child: Column(
                spacing: 10.h,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 42.r,
                    backgroundColor: Color(0xffCDE0FF),
                    child: SvgPicture.asset(
                      'assets/icons/profile_blue.svg',
                      width: 90.w,
                      height: 90.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Text(
                    'Welcome, Jhon Yovan',
                    style: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  showFirstWidget
                      ? UpgradeToPRO(
                          upgradeNow: () {
                            setState(() {
                              showFirstWidget = false;
                            });
                          },
                        )
                      : PROActive(),
                  Column(
                    children: List.generate(4, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 6, bottom: 7),
                        child: ProfileUserBanner(
                          text: pText[index],
                          navigator: pNavigator[index], // Pass the widget
                        ),
                      );
                    }),
                  ),
                  WhiteAppCustomButton(text: 'Log Out'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UpgradeToPRO extends StatelessWidget {
  final VoidCallback upgradeNow;

  const UpgradeToPRO({super.key, required this.upgradeNow});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PremiumScreen(),
          ),
        );
      },
      child: Container(
        width: double.infinity.w,
        height: 137.h,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('assets/images/dot_map.png'),
            alignment: Alignment.centerRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                spacing: 5.h,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upgrade to PRO Version',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      fontSize: 15.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 238,
                    child: Text(
                      'A VPN service provides you a secure and encrypted tunnel and more fast!',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: upgradeNow,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(118.w, 30.h),
                    ),
                    child: Text(
                      'Upgrade Now',
                      style: GoogleFonts.montserrat(
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileUserBanner extends StatelessWidget {
  final String text;
  final Widget navigator;

  const ProfileUserBanner({
    super.key,
    required this.text,
    required this.navigator,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => navigator));
      },
      child: Container(
        width: double.infinity.w,
        height: 53.h,
        decoration: BoxDecoration(
          color: Color.fromRGBO(118, 116, 132, 0.1),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 40.w,
          children: [
            Text(
              text,
              // 'Account',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(width: 30.w),
            Icon(Icons.arrow_forward_ios, color: Colors.black, size: 15.sp),
          ],
        ),
      ),
    );
  }
}

class PROActive extends StatelessWidget {
  const PROActive({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PremiumScreen(),
          ),
        );
      },
      child: Container(
        width: double.infinity.w,
        height: 70.h,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your subscription is active until',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '20/12/2024',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(width: 5.w),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.sp),
          ],
        ),
      ),
    );
  }
}
