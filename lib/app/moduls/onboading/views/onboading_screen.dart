import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../utils/agree_continue_button.dart';
import '../utils/desagree_button.dart';
import '../utils/onboading_title_subtitle.dart';
import '../utils/privacy_permision_box.dart';

class OnboadingScreen extends StatelessWidget {
  const OnboadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor3,
      body: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15.0, top: 30.0, bottom: 30.0),
        child: ListView(
          children: const [
            OnboadingTitleSubtitle(),
            PrivacyPermisionBox(),
    
            AgreeContinueButton(),
            SizedBox(height: 15),
            DesagreeButton()
          ],
        ),
      ),
    );
  }
}
