import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../screens/auth/login_screen.dart';
import '../../screens/auth/signup_options_screen.dart';
import '../../widgets/login_option.dart';
import '../../widgets/logo_text.dart';
import '../../widgets/login_screen_text.dart';

class LoginOptionsScreen extends StatelessWidget {
  const LoginOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> text = [
      'Login with Google',
      'Login with Facebook',
      'Login with Mail',
    ];

    final List<String> logo = [
      'assets/icons/google.svg',
      'assets/icons/facebook.svg',
      'assets/icons/mail.svg',
    ];

    final List<Color> color = [
      Colors.white,
      primaryColor,
      Colors.white,
    ];

    final List<Color> tColor = [
      Color(0xff4B485E),
      Colors.white,
      Color(0xff4B485E),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          spacing: 5.h,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200.h),
              child: LogoText(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Center(child: LoginScreenText()),
            ),
            SizedBox(
              height: 100.h,
            ),
            Column(
              children: List.generate(3, (index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginScreen(),
                        ));
                  },
                  child: LoginOption(
                    text: text[index],
                    logo: logo[index],
                    bgColor: color[index],
                    textColor: tColor[index],
                  ),
                );
              }),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?  ",
                  style: GoogleFonts.plusJakartaSans(color: secondaryColor),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SignupOptionsScreen()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.montserrat(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
