import 'dart:convert';
import 'package:flutter/material.dart';
import '../../model/item.dart';

class ItemDetail extends StatelessWidget {
  final Item item;

  const ItemDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Vérifiez s'il y a des images
            if (item.images.isNotEmpty)
            // Image en haut avec une hauteur plus grande
              Container(
                height: 400, // Hauteur de la première image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: MemoryImage(
                      base64Decode(item.images[0]['imageData']),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            // Espace entre la grande image et les petites images
            SizedBox(height: 10),
            // Liste des petites images
            SizedBox(
              height: 100, // Hauteur de la liste des petites images
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: item.images.length > 1 ? item.images.length - 1 : 0, // Exclure la première image si elle existe
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Image.memory(
                      base64Decode(item.images[index + 1]['imageData']), // Commence à l'index 1
                      width: 100, // Largeur de chaque petite image
                      height: 100, // Hauteur de chaque petite image
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            // Détails
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price: \$${item.price.toString()}'),
                  Text('Description: ${item.description}'),
                  // Ajoutez plus de détails au besoin
                ],
              ),
            ),
            // Bouton "Ajouter au panier"
            Padding(
              padding: const EdgeInsets.all(16.0),
              child : Center (
              child:
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.black, // Couleur du texte
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Bord arrondi de 6px
                  ),
                ),
                onPressed: () {
                  // Action à effectuer lorsque le bouton est pressé
                  // Par exemple, ajouter l'article au panier
                },
                child: Text('Ajouter au panier'),
              )

              ),
            ),
          ],
        ),
      ),
    );
  }
}
