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
          'Discover the Beauty of the Quran.',
          style: TextStyle(
              color: scaffoldBackground,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        Text(
          textAlign: TextAlign.center,
          'Explore the divine verses with easy access and a peaceful experience.',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
