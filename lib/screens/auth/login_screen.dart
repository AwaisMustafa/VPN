import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../screens/auth/forgot_password_screen.dart';
import '../../screens/auth/signup_options_screen.dart';
import '../../widgets/custom_bottom_navbar.dart';
import '../../widgets/default_app_custom_button.dart';
import '../../widgets/login_screen_text.dart';
import '../../widgets/login_text_field.dart';
import '../../widgets/logo_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/password_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              spacing: 15.h,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 150.h),
                  child: LogoText(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.w, right: 50.w),
                  child: Center(child: LoginScreenText()),
                ),
                SizedBox(
                  height: 20.h,
                ),
                LoginTextField(label: "Email", hint: "Dummy@example.com",),
                PasswordTextField(
                  label: "Password",
                  hint: "**********",
                  obscure: false,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Forgot password',
                        style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CustomBottomNavbar()),
                    );
                  },
                  child: DefaultAppCustomButton(text: 'Log In'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
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
                            MaterialPageRoute(
                                builder: (_) => SignupOptionsScreen()),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
