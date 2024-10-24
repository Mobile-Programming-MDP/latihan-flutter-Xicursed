import 'package:flutter/material.dart';

class Profil_Screen extends StatefulWidget{
  const Profil_Screen({super.key});

  @override
  State<Profil_Screen> createState() => _Profil_ScreenState();
}

class _Profil_ScreenState extends State<Profil_Screen>{
  bool isSignedIn = false;
  String fullName = '';
  String userName = '';
  int favoriteCandiCount = 0;

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
            children: [
              //TODO: 2. Buat Bagian ProfileHeader yang berisi gambar profil
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 200 - 50),),
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple, width: 2),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/placeholder_image.png'),
                    )
                  ),
                  if(isSignedIn)
                    IconButton(onPressed: (){},
                    icon: Icon(Icons.camera_alt, color: Colors.deepPurple[50],),),
                ],
              ),
              //TODO: 3. Buat bagian ProfileInfo yang berisi info profil
              SizedBox(height: 20),
              Divider(color: Colors.deepPurple[100]),
              SizedBox(height: 4),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: [
                      Icon(Icons.lock, color: Colors.amber),
                      SizedBox(width: 8),
                      Text('Pengguna', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),),
                  Expanded(
                    child: Text(': $userName', style: TextStyle(
                      fontSize: 18),),),
                ],
              ),
     
              //Row Nama
              SizedBox(height: 4),
              Divider(color: Colors.deepPurple[100]),
              SizedBox(height: 4),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'Nama', 
                        style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),),
                  Expanded(
                    child: Text(': $fullName', style: TextStyle(
                      fontSize: 18),),),
                ],
              ),
     
              //Row Favorit
              SizedBox(height: 4),
              Divider(color: Colors.deepPurple[100]),
              SizedBox(height: 4),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'Favorit', 
                        style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),),
                  Expanded(
                    child: Text(': $favoriteCandiCount', style: TextStyle(
                      fontSize: 18),),),
                ],
              ),

              //TODO: 4. Buat ProfileAction yang berisi TextButton sign in/out
              SizedBox(height: 4),
              Divider(color: Colors.deepPurple[100]),
              SizedBox(height: 20),
              isSignedIn
                    ? TextButton(onPressed: (){}, child: Text('Sign Out'))
                    : TextButton(onPressed: (){}, child: Text('Sign In')),
            ],)
          ),
        ],
      ),
    );
  }
}