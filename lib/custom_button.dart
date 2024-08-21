import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text,
    this.ontap,
  });
  final String? text;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.lightGreenAccent,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all()),
        child: Text(
          text ?? 'text',
          style: const TextStyle(color: Colors.black, fontSize: 22.0),
        ),
      ),
    );
  }
}
