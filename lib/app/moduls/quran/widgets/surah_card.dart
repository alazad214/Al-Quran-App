import 'package:flutter/material.dart';

class SurahCard extends StatelessWidget {
  const SurahCard(
      {super.key,
      this.number,
      this.surahnName,
      this.englishName,
      this.revelationType});
  final number;
  final surahnName;
  final englishName;
  final revelationType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 80.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 0.1)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 35.0,
            width: 35.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20.0)),
            child: Text(
              number ?? '1',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                surahnName ?? 'Al Fatiha',
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                englishName ?? 'The Opening',
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            revelationType ?? 'Meccan',
            style: const TextStyle(
              color: Colors.green,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
