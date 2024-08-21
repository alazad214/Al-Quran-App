import 'package:al_quran_app/app/moduls/home/widget/header_box.dart';
import 'package:al_quran_app/utils/app_colors.dart';
import 'package:al_quran_app/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.sort,
            color: Colors.white,
          ),
          title: const Text(
            'Quran App',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: AppColor.basecolor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              HeaderBox()
            ],
          ),
        ));
  }
}
