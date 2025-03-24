import 'package:al_quran_app/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_config.dart';

class DesagreeButton extends StatelessWidget {
  const DesagreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Disagree',
      bgcolor: Colors.transparent,
      color: primaryColor,
      ontap: () {
        Get.defaultDialog(
             titlePadding: const EdgeInsets.only(top: 20),
            backgroundColor: appColor3,
            title: 'If Desagree, you will not use to $appName',
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
                          style: TextStyle(color: primaryColor,  fontSize: 16,)),
                      TextSpan(
                          text: 'Privacy Policy ',
                          style: TextStyle(color: secondaryColor,  fontSize: 16,)),
                      TextSpan(text: 'And  ', style: TextStyle(color: primaryColor,   fontSize: 16,)),
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
                        SystemNavigator.pop();
                      },
                      child: const Text(
                        'Exit',
                                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                        ),
                      )),
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
                ],
              )
            ]);
  
      },
    );
  }
}
