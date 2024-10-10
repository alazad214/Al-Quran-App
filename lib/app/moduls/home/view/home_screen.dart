import 'package:al_quran_app/app/moduls/home/widget/header_box.dart';
import 'package:al_quran_app/app/moduls/quran/views/quran_screen.dart';
import 'package:al_quran_app/utils/app_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.sort, color: whiteColor),
          title: const Text(
            appName,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: appColor6,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              const HeaderBox(),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => QuranScreen());
                  },
                  child: Text('Open Quran'))
            ],
          ),
        ));
  }
}
