import 'package:flutter/material.dart';
import 'package:wisata_candi/Profil_Screen.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/DetailScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: DetailScreen(
      //   candi: candiList[0],
      home: Profil_Screen(),
      ),
    );
  }
}