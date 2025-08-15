import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../constants/colors.dart';
import '../../widgets/custom_appbar.dart';
import 'dart:async';
import 'dart:math';
import '../../widgets/white_app_custom_button.dart';
import '../../widgets/change_server_banner.dart';

class SpeedtestScreen extends StatefulWidget {
  const SpeedtestScreen({super.key});

  @override
  _SpeedtestScreenState createState() => _SpeedtestScreenState();
}

class _SpeedtestScreenState extends State<SpeedtestScreen> {
  double downloadSpeed = 0;
  double uploadSpeed = 0;
  double ping = 0;
  double needleValue = 0;
  bool isTesting = false;

  Future<void> startSpeedTest() async {
    setState(() {
      isTesting = true;
      downloadSpeed = 0;
      uploadSpeed = 0;
      ping = 0;
      needleValue = 0;
    });

    // Animate gauge needle during test
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (needleValue < 180) {
        // stop at 250
        setState(() {
          needleValue =
              (needleValue + Random().nextDouble() * 10).clamp(0, 180);
        });
      } else {
        timer.cancel();
      }
    });

    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      downloadSpeed = (Random().nextDouble() * 100) + 50;
      uploadSpeed = (Random().nextDouble() * 80) + 20;
      ping = (Random().nextDouble() * 20) + 5;
      needleValue = (downloadSpeed * 4).clamp(0, 180); // scale needle position
      isTesting = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChangeServerBanner(),
                SizedBox(
                  width: 20.w,
                ),
                SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      startAngle: 150,
                      endAngle: 30,
                      labelsPosition: ElementsPosition.outside,
                      minimum: 0,
                      maximum: 200,
                      showLabels: true,
                      showTicks: true,
                      axisLabelStyle: GaugeTextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      showLastLabel: true,
                      tickOffset: 1,
                      // labelOffset: 9,
                      ticksPosition: ElementsPosition.outside,
                      axisLineStyle: AxisLineStyle(
                        thickness: 35.w,
                        color: Color(0xffDFEAFE),
                        cornerStyle: CornerStyle.bothCurve,
                      ),
                      pointers: <GaugePointer>[
                        RangePointer(
                          value: needleValue,
                          width: 35.w,
                          color: primaryColor,
                          cornerStyle: CornerStyle.bothCurve,
                        ),
                        NeedlePointer(
                          value: needleValue,
                          needleEndWidth: 10,
                          needleLength: 0.51, // longer needle
                          needleStartWidth: 0.7,
                          needleColor: primaryColor,
                          knobStyle: KnobStyle(
                            knobRadius: 0.1,
                            color: Colors.white,
                            borderColor: primaryColor,
                            borderWidth: 0.025,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Results Row
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.w, right: 20.w, bottom: 5.h, top: 5.h),
                  child: SpeedTestResult(
                      downloadSpeed: downloadSpeed,
                      uploadSpeed: uploadSpeed,
                      ping: ping),
                ),

                SizedBox(height: 40.h),

                // Test Again Button
                InkWell(
                  onTap: isTesting ? null : startSpeedTest,
                  child: WhiteAppCustomButton(
                    text: isTesting ? "Testing..." : "Test Again",
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

class SpeedTestResult extends StatelessWidget {
  const SpeedTestResult({
    super.key,
    required this.downloadSpeed,
    required this.uploadSpeed,
    required this.ping,
  });

  final double downloadSpeed;
  final double uploadSpeed;
  final double ping;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.w,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            SvgPicture.asset(
              'assets/icons/download.svg',
              width: 25.w,
              height: 20.h,
            ),
            SizedBox(
              height: 9.h,
            ),
            RichText(
              text: TextSpan(
                text: downloadSpeed.toInt().toString(),
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: ' Mbps',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Download',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: secondaryColor,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 50.h,
          width: 1.w,
          decoration: BoxDecoration(color: Color(0xffB8B8B8)),
        ),
        Column(
          children: [
            SvgPicture.asset(
              'assets/icons/upload.svg',
              width: 25.w,
              height: 20.h,
            ),
            SizedBox(
              height: 9.h,
            ),
            RichText(
              text: TextSpan(
                text: uploadSpeed.toInt().toString(),
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: ' Mbps',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Download',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: secondaryColor,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 50.h,
          width: 1.w,
          decoration: BoxDecoration(
            color: Color(0xffB8B8B8),
          ),
        ),
        Column(
          children: [
            SvgPicture.asset(
              'assets/icons/signal_full.svg',
              width: 25.w,
              height: 20.h,
            ),
            SizedBox(
              height: 9.h,
            ),
            RichText(
              text: TextSpan(
                text: ping.toInt().toString(),
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: ' MS',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Download',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
