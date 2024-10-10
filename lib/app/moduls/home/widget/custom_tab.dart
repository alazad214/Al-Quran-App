import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({super.key, this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(15.0)),
        child: Tab(text: text));
  }
}
