import 'package:flutter/material.dart';

import 'details_info.dart';

void detailsDialog(
    BuildContext context, surahNo, juz, manzil, ruku, hizbQuarter) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 20,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: DetailsInfo(title: "Ayah No", text: surahNo),
                    ),
                    Expanded(
                      child: DetailsInfo(
                        title: "Juz",
                        text: juz,
                      ),
                    ),
                  ],
                ),
                const Divider(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: DetailsInfo(title: "Manzil", text: manzil),
                    ),
                    Expanded(
                      child: DetailsInfo(title: "Ruku", text: ruku),
                    ),
                  ],
                ),
                const Divider(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DetailsInfo(title: "hizbQuarter", text: hizbQuarter),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text(
                        'back',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
