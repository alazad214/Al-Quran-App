import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppButton extends StatelessWidget {
  final text;
  final bgcolor;
  final ontap;
  final color;
  const AppButton({super.key, this.text, this.bgcolor, this.ontap, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        margin: const EdgeInsets.only(right: 15.0, left: 15.0),
        decoration: BoxDecoration(
            color: bgcolor ?? appColor8,
            borderRadius: BorderRadius.circular(35.0)),
        child: Text(
          text ?? 'button text',
          style: TextStyle(
              color: color ?? whiteColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
