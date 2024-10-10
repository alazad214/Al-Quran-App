import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';

class OnboadingTitleSubtitle extends StatelessWidget {
  const OnboadingTitleSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          'Easily Access, Fully Secure.',
          style: TextStyle(
              color: scaffoldBackground,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        Text(
          textAlign: TextAlign.center,
          'Quickly retrieve your secured files and information with a simple tap.',
          style: TextStyle(
            color: primaryColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
