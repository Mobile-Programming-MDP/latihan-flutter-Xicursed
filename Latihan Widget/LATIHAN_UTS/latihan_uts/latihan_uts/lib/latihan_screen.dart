import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget{
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Latihan UTS"),),
      body: Padding(padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text("INFORMATIKA",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
          ),
          const SizedBox(height: 8),
          Image.asset(
          "images/latihan.png",
          height: 250,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          const Text("UNIVERSITAS MULTI DATA PALEMBANG",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
          const Text("KOTA PALEMBANG, PROV SUMATERA SELATAN",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red[900],
            ),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  //TODO Baris Info
                  Row(
                    children: [
                      //Kiri
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status",
                               style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Aktif",
                               style: TextStyle(
                                color: Colors.white,
                                 fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                             Text(
                              "Akreditasi",
                               style: TextStyle(
                                color: Colors.white
                                 ),
                            ),
                            Text(
                              "A",
                               style: TextStyle(
                                color: Colors.white,
                                 fontWeight: FontWeight.bold),
                            ),
                            

                          ],
                        ),
                      ),
                      //TODO Kanan
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tangggal Berdiri",
                               style: TextStyle(
                                color: Colors.white),
                            ),
                            Text(
                              "9 April 2021",
                               style: TextStyle(
                                color: Colors.white,
                                 fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                             Text(
                              "Jumlah Mahasiswa",
                               style: TextStyle(
                                color: Colors.white),
                            ),
                            Text(
                              "5000", 
                              style: TextStyle(
                                color: Colors.white,
                                 fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                  //TODO: Baris berisi kontak
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                    ],
                  ),
                ],
              ),),
          )
        ],
      ),
      )

    );
  }
}