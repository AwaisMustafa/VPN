import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../screens/auth/check_your_email.dart';
import '../../screens/auth/login_screen.dart';
import '../../widgets/default_app_custom_button.dart';
import '../../widgets/login_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 25.h,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.h),
                child: CircleAvatar(
                  backgroundColor: Color(0xff9CBFF4),
                  radius: 90.r,
                  child: Image.asset(
                    'assets/images/forgot_password.png',
                    width: 110.w,
                    height: 110.h,
                  ),
                ),
              ),
              Text(
                'Forgot Password?',
                style: GoogleFonts.montserrat(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40, left: 40, right: 40),
                child: Text(
                  'Please enter your registered email address below to receive'
                  ' instructions for resetting your password.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: secondaryColor
                  ),
                ),
              ),
              LoginTextField(label: 'Email', hint: "Jhon Blaze"),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CheckYourEmail(),
                    ),
                  );
                },
                child: DefaultAppCustomButton(text: 'Send Mail'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  'Back To Login',
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
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
