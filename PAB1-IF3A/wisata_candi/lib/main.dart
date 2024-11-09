import 'package:flutter/material.dart';
import 'package:wisata_candi/data/datacandi.dart';
import 'package:wisata_candi/detailscreen.dart';
import 'package:wisata_candi/profilscreen.dart';
import 'package:wisata_candi/searchscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: DetailScreen(
      //   candi: candiList[0],
      // ),
      home: SearchScreen(),
    );
  }
}