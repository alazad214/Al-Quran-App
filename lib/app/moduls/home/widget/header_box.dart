import 'package:flutter/material.dart';

import '../../../../utils/app_images.dart';

class HeaderBox extends StatelessWidget {
  const HeaderBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(),
      ),
      child: Row(
        children: [
          const Expanded(
            flex: 3,
            child: Text(
                'The reward of deeds depends upon the intentions and every person will get the reward according to what he has intended.Sahih al-Bukhari (Book 1, Hadith 1)'),
          ),
          Expanded(
              flex: 2,
              child: Image.asset(
                AppImage.image,
                height: 120.0,
              ))
        ],
      ),
    );
  }
}
