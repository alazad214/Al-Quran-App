import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_string.dart';

class PrivacyPermisionBox extends StatelessWidget {
  const PrivacyPermisionBox({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height / 2,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
      margin:
          const EdgeInsets.only(top: 20.0, left: 15, right: 15, bottom: 15.0),
      decoration: BoxDecoration(
          border: Border.all(width: 0.1, color: Colors.black38),
          borderRadius: BorderRadius.circular(6.0),
          color: whiteColor),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              'Privacy & Permissions Notice!',
              style: TextStyle(
                  color: blueBlackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: primaryColor,
            ),
            Text(
              textAlign: TextAlign.start,
              AppString.privacyAndPermissions,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
