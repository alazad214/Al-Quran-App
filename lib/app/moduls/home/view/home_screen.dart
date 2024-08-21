import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.sort),
          title: const Text('Quran App'),
          titleSpacing: 0,
          actions: const [Icon(Icons.search_rounded)],
        ),
        body: const Column(
          children: [],
        ));
  }
}
