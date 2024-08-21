import 'package:al_quran_app/app/moduls/home/widget/header_box.dart';
import 'package:al_quran_app/app/moduls/quran/views/quran_screen.dart';
import 'package:al_quran_app/utils/app_colors.dart';
import 'package:al_quran_app/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                const HeaderBox(),
                const SizedBox(height: 20.0),
                TabBar(
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  labelStyle: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                  tabs: [
                    _customTab('Quran'),
                    _customTab('Hadis'),
                    _customTab('Namaz'),
                  ],
                ),
                Expanded(
                    child: TabBarView(children: [
                  const QuranScreen(),
                  Container(),
                  Container(color: Colors.blue),
                ])),
              ],
            ),
          )),
    );
  }

  Widget _customTab(text) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(15.0)),
        child: Tab(text: text));
  }
}
