import 'package:al_quran_app/app/moduls/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 100, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                    textAlign: TextAlign.center,
                    'The Prophet Muhammad Peace be upon him said: Spend in charity and do not keep count for then Allah will also keep count in giving your provision. (Bukhari and Muslim)',
                    style: TextStyle(
                      fontSize: 14.0,
                    )),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: screenSize.height / 2,
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      margin: const EdgeInsets.only(
                          top: 20, right: 10.0, left: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Image.asset('assets/images/quran.jpg',
                          fit: BoxFit.cover),
                    ),
                    Positioned(
                        bottom: -25,
                        left: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const HomeScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade300,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15), // Padding
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10), // Rounded corners
                            ),
                          ),
                          child: const Text("Let's Go"),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
