import 'package:al_quran_app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart'; // import this
import '../../onboading/views/onboading_screen.dart';
import '../../quran/views/quran_screen.dart'; // import QuranScreen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkAgreementStatus();
  }

  void checkAgreementStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isAgreed = prefs.getBool('agreed');

    Future.delayed(const Duration(seconds: 3), () {
      if (isAgreed == true) {
        Get.off(() => QuranScreen());
      } else {
        Get.to(() => const OnboadingScreen());
      }
    });
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
