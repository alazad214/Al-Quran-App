import 'package:al_quran_app/app/moduls/home/view/home_screen.dart';
import 'package:al_quran_app/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../utils/app_colors.dart';
import '../../../logic/service/shared_service.dart';
import '../../quran/views/quran_screen.dart';

class AgreeContinueButton extends StatelessWidget {
  const AgreeContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Agree & Continue',
      ontap: () async {
        Get.offAll(() =>  QuranScreen());
        await SharedServices().setData(SetType.bool, 'already_opened', true);
        Fluttertoast.showToast(
          backgroundColor: appColor8,
          msg:
              'You are aware of all permissions and privacy policies of this app',
        );
      },
    );
  }
}
