import 'package:flutter/material.dart';
import 'package:wisata_candi/data/datacandi.dart';
import 'package:wisata_candi/models/candiiiii.dart';
import 'package:wisata_candi/widgets/item_card.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      //TODO: 1 Buat AppBar dengan judul wisata candi
      appBar: AppBar(title: Text('Wisata Candi'),),
      //TODO: 2 Buat Body dengan GridView Builder
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.all(8),
        itemCount: candiList.length, 
        itemBuilder: (context, index){
          Candi candi = candiList[index];
          return ItemCard(
            candi: candi,
          );
        }),
      //TODO: 3 Buat ItemCard sebagai return value dari Gridview.Builder
    );
  } 
}