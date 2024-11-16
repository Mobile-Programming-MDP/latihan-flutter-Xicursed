import 'package:flutter/material.dart';
import 'package:wisata_candi/detailscreen.dart';
import 'package:wisata_candi/models/candiiiii.dart';

class ItemCard extends StatelessWidget {
  //TODO: 1. Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;

  const ItemCard({super.key, required this.candi});
  
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => DetailScreen(candi: candi)
            )
          );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(4),
        elevation: 1,
        //TODO: 2. Tetapkan parameter shape, margin, dan elevation dari Cari
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(candi.imageAsset)),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: 
              Text(candi.name),
            ),
            Text(candi.type),
            //TODO: 3. Buat Imager sebagai anak dari Column
            //TODO: 4. Buat Text sebagai anak dari Column
            //TODO: 5. Buat Text sebagai anak dari Column
          ],
        ),
      ),
    );
  }
}