import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/change_server_banner.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/go_premium_banner.dart';
import '../../widgets/vpn_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isConnected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              spacing: 25.h,
              children: [
                GoPremiumBanner(),
                InkWell(
                  child: VPNButton(),
                  onTap: () {
                    setState(() {
                      isConnected = !isConnected;
                    });
                  },
                ),
                RichText(
                  text: TextSpan(
                    text: 'Status ',
                    style: GoogleFonts.montserrat(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: isConnected ? "Connected" : 'Not Connected',
                        style: GoogleFonts.montserrat(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: isConnected ? Colors.green : Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '00 : 00 : 00',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                  ),
                ),
                ChangeServerBanner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
