import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../screens/premium/payment_method.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  bool isAnnual = false; // false = Monthly, true = Annual

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'VPN',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 28.sp,
          ),
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
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 10.w.h, right: 50.w.h, left: 50.w.h, bottom: 10.w.h),
              child: Text(
                textAlign: TextAlign.center,
                'Upgrade to Quark Premium to get these all great features:',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.symmetric(horizontal: 10.w.h, vertical: 6.w.h),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: PremiumToggleButton(
                isAnnual: isAnnual,
                onChanged: (value) {
                  setState(() {
                    isAnnual = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20.h),
            isAnnual ? AnnualPremium() : MonthlyPremium(),
          ],
        ),
      )),
    );
  }
}

class AnnualPremium extends StatelessWidget {
  const AnnualPremium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> features = [
      'Faster worldwide location',
      'Superfast server connection',
      'No ads',
      'Searching more secure',
      'No limit connection',
    ];

    return Container(
        width: double.infinity,
        height: 512,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            spacing: 10.h,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Annual Premium',
                style: GoogleFonts.montserrat(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '4 user allowed',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '\$70,99 ',
                  style: GoogleFonts.montserrat(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '/yearly',
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff767484),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PaymentMethod(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                    left: 25,
                    right: 25,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(56.r),
                    ),
                    child: Text(
                      "Subscribe Now",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 9, bottom: 9, left: 15),
                    child: Row(
                      spacing: 15.w,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/world.svg',
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          features[index],
                          style: GoogleFonts.montserrat(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ));
  }
}

class MonthlyPremium extends StatelessWidget {
  const MonthlyPremium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> features = [
      'Faster worldwide location',
      'Superfast server connection',
      'No ads',
      'Searching more secure',
      'No limit connection',
    ];

    return Container(
        width: double.infinity,
        height: 512,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.w.h),
          child: Column(
            spacing: 10.h,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Monthly Premium',
                style: GoogleFonts.montserrat(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '4 user allowed',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '\$8,99 ',
                  style: GoogleFonts.montserrat(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '/month',
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff767484),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PaymentMethod(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 5.w.h,
                    bottom: 5.w.h,
                    left: 25.w.h,
                    right: 25.w.h,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(56.r),
                    ),
                    child: Text(
                      "Subscribe Now",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 9, bottom: 9, left: 15),
                    child: Row(
                      spacing: 15.w,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/world.svg',
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          features[index],
                          style: GoogleFonts.montserrat(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ));
  }
}

class PremiumToggleButton extends StatefulWidget {
  final bool isAnnual;
  final ValueChanged<bool> onChanged;

  const PremiumToggleButton({
    super.key,
    required this.isAnnual,
    required this.onChanged,
  });

  @override
  State<PremiumToggleButton> createState() => _PremiumToggleButtonState();
}

class _PremiumToggleButtonState extends State<PremiumToggleButton> {
  late ValueNotifier<bool> _controller;

  @override
  void initState() {
    super.initState();
    _controller = ValueNotifier<bool>(widget.isAnnual);

    // Listen to controller changes
    _controller.addListener(() {
      widget.onChanged(_controller.value);
    });
  }

  @override
  void didUpdateWidget(PremiumToggleButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isAnnual != widget.isAnnual) {
      _controller.value = widget.isAnnual;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15.w,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Left text
        Text(
          "Billed\nMonthly",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),

        // Toggle
        AdvancedSwitch(
          controller: _controller,
          activeColor: primaryColor, // Track color when ON
          inactiveColor: primaryColor, // Track color when OFF
          // activeChild: const Text(
          //   '11',
          //   style: TextStyle(color: Colors.white),
          // ),
          // inactiveChild: const Text(
          //   '22',
          //   style: TextStyle(color: Colors.white),
          // ),
          thumb: Container(
            decoration: BoxDecoration(
              color: Colors.white, // Thumb color
              shape: BoxShape.circle,
            ),
          ),
          width: 60.w,
          height: 30.h,
          borderRadius: BorderRadius.circular(30),
        ),

        // Right text
        Text(
          "Billed\nAnnually",
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ],
    );
  }
}
