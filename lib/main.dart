import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/splash_onboarding/splash_screen.dart';

void main() {
  runApp(
    ScreenUtilInit(
      // designSize: Size(375, 812), // iPhone 11 Pro reference
      designSize: Size(411, 823),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VPN',
      home: SplashScreen(),
    );
  }
}
