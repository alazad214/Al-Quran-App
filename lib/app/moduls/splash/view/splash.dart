import 'package:al_quran_app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../onboading/views/onboading_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnboadingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
                height: screenSize.height / 1,
                alignment: Alignment.center,
                child: Image.asset(
                  appLogo,
                  width: screenSize.width / 3,
                )),
          ],
        ),
      ),
    );
  }
}
