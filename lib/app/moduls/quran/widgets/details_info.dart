import 'package:flutter/material.dart';

class DetailsInfo extends StatelessWidget {
  const DetailsInfo({super.key, this.title, this.text});
  final title;
  final text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
        Text(
          text,
          maxLines: 1,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ],
    );
  }
}
