import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/auth/login_screen.dart';
import '../../widgets/default_app_custom_button.dart';
import '../../widgets/login_text_field.dart';
import '../../widgets/logo_text.dart';
import '../../widgets/password_text_field.dart';
import '../../widgets/signup_screen_text.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10.h,
            children: [
              SizedBox(
                height: 25.h,
              ),
              LogoText(),

              Padding(
                padding: EdgeInsets.only(left: 50.w, right: 50.w),
                child: Center(child: SignupScreenText()),
              ),
              SizedBox(
                height: 50.h,
              ),
              LoginTextField(label: "Name", hint: "Jhon Blaze"),
              LoginTextField(label: 'Phone Number', hint: '0333-5666-89521'),
              LoginTextField(label: 'Email', hint: 'Dummy@example.com'),
              PasswordTextField(
                label: 'Password',
                hint: '**********',
                obscure: true,
              ),
              SizedBox(height: 15.h),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LoginScreen()),
                  );
                },
                child: DefaultAppCustomButton(text: 'Sign Up'),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "have an account? ",
              //       style: GoogleFonts.montserrat(color: Colors.black),
              //     ),
              //     TextButton(
              //       onPressed: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (_) => LoginOptionsScreen()),
              //         );
              //       },
              //       child: Text(
              //         "Log In",
              //         style: GoogleFonts.plusJakartaSans(
              //           color: primaryColor,
              //           fontWeight: FontWeight.w700,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
