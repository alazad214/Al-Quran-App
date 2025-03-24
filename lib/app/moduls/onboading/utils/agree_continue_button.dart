import 'package:al_quran_app/app/moduls/quran/views/quran_screen.dart';
import 'package:al_quran_app/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_config.dart';

class AgreeContinueButton extends StatelessWidget {
  const AgreeContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Agree & Continue',
      ontap: () async {
        Get.defaultDialog(
          titlePadding: const EdgeInsets.only(top: 20),
            backgroundColor: appColor3,
            title: 'If Exit, you will not use $appName',
            
            titleStyle: const TextStyle(
                color: primaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
            content: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text:
                              "By Continuing To Use  $appName . You agree to our  ",
                          style: TextStyle(color: primaryColor,   fontSize: 16,)),
                      TextSpan(
                          text: 'Privacy Policy ',
                          style: TextStyle(color: secondaryColor,   fontSize: 16,)),
                      TextSpan(text: 'And ', style: TextStyle(color: primaryColor,   fontSize: 16,)),
                      TextSpan(
                          text: 'Permissions.',
                          style: TextStyle(color: secondaryColor,   fontSize: 16,)),
                    ]),
                  ),
                ),
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'back',
                                style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                        ),
                      )),
                  TextButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        await prefs.setBool('agreed', true);

                        Get.offAll(() => QuranScreen());
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                        ),
                      )),
                ],
              )
            ]);
     
      },
    );
  }
}
