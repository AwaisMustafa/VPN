import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../screens/auth/login_options_screen.dart';
import '../../screens/auth/signup_screen.dart';
import '../../widgets/login_option.dart';
import '../../widgets/logo_text.dart';
import '../../widgets/signup_screen_text.dart';

class SignupOptionsScreen extends StatelessWidget {
  const SignupOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> text = [
      'Sign up with Google',
      'Sign up with Facebook',
      'Sign up with Mail',
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
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                child: Center(child: SignupScreenText()),
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
                        MaterialPageRoute(builder: (_) => SignupScreen()),
                      );
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
                    "have an account?  ",
                    style: GoogleFonts.montserrat(color: secondaryColor),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LoginOptionsScreen()),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: GoogleFonts.plusJakartaSans(
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
