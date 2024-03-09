import 'package:flutter/material.dart';

class Create extends StatelessWidget {
  final String image = "assets/images/imgNous1.png";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),

            SizedBox(height: 20), // Ajoute un espace vertical entre l'image et le texte
            Padding(
              padding: const EdgeInsets.all(8.0), // Ajoute un padding de 8.0 à tous les côtés du texte
              child: Text(
                "a stack of Focus cards. The powder coated steel divider separates active cards from new"
                    "ones, or can be used to archive important task lists."
                    "Une fois cuits, les pots en terre cuite sont acheminés vers une zone de traitement final, où ils sont nettoyés et décorés de motifs et de dessins typiques de la culture marocaine. Enfin, les pots en argile sont emballés et expédiés dans le monde entier.  Cette fabrique de pots en argile représente l'ancienne tradition artisanale du Maroc et la passion de ses artisans pour la création de produits uniques et de haute qualité."
                    "Une fois les pots créés, ils sont placés à l'air libre pour sécher. Ensuite, les pots sont cuits dans des fours à bois pendant environ 24 heures, jusqu'à ce qu'ils atteignent la bonne consistance et résistance.",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Image.asset(
              'assets/images/imgNous2.png',
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0), // Ajoute un padding de 8.0 à tous les côtés du texte
              child: Text(
                "a stack of Focus cards. The powder coated steel divider separates active cards from new"
                    "ones, or can be used to archive important task lists."
                    "Une fois cuits, les pots en terre cuite sont acheminés vers une zone de traitement final, où ils sont nettoyés et décorés de motifs et de dessins typiques de la culture marocaine. Enfin, les pots en argile sont emballés et expédiés dans le monde entier.  Cette fabrique de pots en argile représente l'ancienne tradition artisanale du Maroc et la passion de ses artisans pour la création de produits uniques et de haute qualité."
                    "Une fois les pots créés, ils sont placés à l'air libre pour sécher. Ensuite, les pots sont cuits dans des fours à bois pendant environ 24 heures, jusqu'à ce qu'ils atteignent la bonne consistance et résistance.",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
