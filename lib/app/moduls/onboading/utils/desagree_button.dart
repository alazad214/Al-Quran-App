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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text:
                              "By Continuing To Use  $appName . You agree to our  ",
                          style: TextStyle(color: primaryColor)),
                      TextSpan(
                          text: 'Privacy Policy ',
                          style: TextStyle(color: secondaryColor)),
                      TextSpan(text: 'And  '),
                      TextSpan(
                          text: 'Permissions.',
                          style: TextStyle(color: secondaryColor)),
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
                      )),
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'back',
                        style: TextStyle(color: primaryColor),
                      )),
                ],
              )
            ]);
      },
    );
  }
}
