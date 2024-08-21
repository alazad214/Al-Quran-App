import 'package:al_quran_app/app/moduls/quran/widgets/surah_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) {
      return SurahCard();
    });
  }
}
