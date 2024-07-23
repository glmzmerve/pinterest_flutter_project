import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinterest_flutter/CreatePage.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({super.key});

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  bool isHomePressed = true;
  bool isCreatePressed = false;
  final TextEditingController _searchController = TextEditingController();
 final List<String> _imageUrls = List.generate(
   20, // kaç tane resim göstermek istediğinizi belirleyin
    (index) => 'https://picsum.photos/seed/${index + 1}/200/300',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/pinterestlogo.jpg'),
          iconSize: 24,
          onPressed: () {
            // Pinterest icon action
          },
        ),
        title: Row(
          children: [
           // SizedBox(width: 10), // İkon ve butonlar arasında boşluk
            TextButton(
              style: ButtonStyle(
                side: MaterialStateProperty.resolveWith<BorderSide>((states) {
                  if (isHomePressed) {
                    return BorderSide(color: Colors.black, width: 1);
                  }
                  return BorderSide(color: Colors.transparent);
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  if (isHomePressed) {
                    return Colors.white;
                  }
                  return Colors.black;
                }),
                backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  if (isHomePressed) {
                    return Colors.black;
                  }
                  return Colors.white;
                }),
              ),
              onPressed: () {
                setState(() {
                  isHomePressed = !isHomePressed;
                });
              },
              child: Text('Anasayfa'),
            ),
           // SizedBox(width: 10),
            TextButton(
              style: ButtonStyle(
                side: MaterialStateProperty.resolveWith<BorderSide>((states) {
                  if (isCreatePressed) {
                    return BorderSide(color: Colors.black, width: 1);
                  }
                  return BorderSide(color: Colors.transparent);
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  if (isCreatePressed) {
                    return Colors.white;
                  }
                  return Colors.black;
                }),
                backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  if (isCreatePressed) {
                    return Colors.black;
                  }
                  return Colors.white;
                }),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreatePage()),
                );
                setState(() {
                  isCreatePressed = !isCreatePressed;
                });
              },
              child:const Text('Oluştur'),
            ),
            SizedBox(width: 60),
             
          
            IconButton(
              icon:const Icon(Icons.notifications),
              onPressed: () {
                // Bildirim ikonu aksiyonu
              },
            ),
            IconButton(
              icon:const Icon(Icons.message),
              onPressed: () {
                // Mesaj ikonu aksiyonu
              },
            ),
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
              child: Column(
                
                children: [
                 
             TextField(
                
                controller: _searchController,
                decoration:const InputDecoration(
                  filled: true,
                  iconColor: Colors.black12,
                  prefixIcon: Icon(Icons.search),
                  border:  OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(200))),
                  labelText: ' Ara',
                  hintText: ' Aramak istediğin kelimeyi yaz...',
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child:
GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Bir satırda kaç kare olduğunu belirtir
            childAspectRatio: 1.0, // Kare şeklinde olmasını sağlar
            crossAxisSpacing: 10, // Kareler arasındaki yatay boşluk
            mainAxisSpacing: 10, // Kareler arasındaki dikey boşluk
          ),
          itemCount: _imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20), // Köşeleri yuvarlatır
              child: Image.network(
                _imageUrls[index],
                fit: BoxFit.cover,
              ),
            );
          },
),
              ),
              ],
            ),




      ),
    );
    
  }
}
