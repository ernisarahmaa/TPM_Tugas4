import 'package:flutter/material.dart';
import 'package:tugas4/data_situs.dart';
import 'package:image_network/image_network.dart';
import 'package:tugas4/detail_situs.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favorite = listSitus.where((website) => website.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite"),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: favorite.length,
        itemBuilder: (context, index) {
          final DataSitus website = favorite[index];
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailSitus(website: website,)
                ),
              );
            },
            child: Card (
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(30),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:GestureDetector(
                      child: ImageNetwork(
                        image: website.imageLink,
                        height: 200,
                        width: 300,
                      ),
                    )
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        website.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
