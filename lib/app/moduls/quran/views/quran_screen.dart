import 'dart:math';
import 'package:al_quran_app/app/moduls/quran/views/quran_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../logic/controller/quran_controller.dart';
import '../../home/widget/header_box.dart';

class QuranScreen extends StatelessWidget {
  QuranScreen({super.key});
  final quranController = Get.put(QuranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Al Quran',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            const HeaderBox(),
            const SizedBox(height: 20),
            Obx(() {
              if (quranController.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (quranController.quranData.value.data?.surahs == null) {
                return const Center(
                  child: Text("No Surahs available."),
                );
              } else {
                final surahs = quranController.quranData.value.data!.surahs;

                return ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: surahs!.length,
                  itemBuilder: (context, index) {
                    var surah = surahs[index];

                    Color randomColor =
                        Color((Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(0.2);

                    return Card(
                      color: Colors.white,
                      child: ListTile(
                        title: Text(
                          surah.englishName ?? '',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          surah.englishNameTranslation ?? '',
                          style: const TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: randomColor,
                          child: Text(
                            "${surah.number}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black12,
                        ),
                        onTap: () {
                          Get.to(() => SurahDetailScreen(surah: surah));
                        },
                      ),
                    );
                  },
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
