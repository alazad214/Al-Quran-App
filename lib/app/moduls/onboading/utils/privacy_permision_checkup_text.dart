import 'package:al_quran_app/utils/app_config.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';

class PrivacyPermisionCheckupText extends StatelessWidget {
  const PrivacyPermisionCheckupText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 25.0),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
            text: "By Continuing To Use  $appName . You agree to our  ",
            style: TextStyle(color: blackColor),
          ),
          TextSpan(
              text: 'Privacy Policy ', style: TextStyle(color: secondaryColor)),
          TextSpan(
            text: 'And  ',
            style: TextStyle(color: blackColor),
          ),
          TextSpan(
              text: 'Permissions.', style: TextStyle(color: secondaryColor)),
        ]),
      ),
    );
  }
}
