
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Découverte des icônes'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Première ligne : 3 icônes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, size: 24, color: Colors.indigo),
                Icon(Icons.favorite, size: 40, color: Colors.red),
                Icon(Icons.school, size: 64, color: Colors.green),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              'Services universitaires',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Grille de 8 icônes
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  children: const [
                    Icon(Icons.calendar_month, size: 32,
                        semanticLabel: 'Emploi du temps'),
                    Text('Emploi du temps'),
                  ],
                ),

                Column(
                  children: const [
                    Icon(Icons.grade, size: 32,
                        semanticLabel: 'Notes'),
                    Text('Notes'),
                  ],
                ),

                Column(
                  children: const [
                    Icon(Icons.library_books, size: 32,
                        semanticLabel: 'Bibliothèque'),
                    Text('Bibliothèque'),
                  ],
                ),

                Column(
                  children: const [
                    Icon(Icons.email, size: 32,
                        semanticLabel: 'Messagerie'),
                    Text('Messagerie'),
                  ],
                ),

                Column(
                  children: const [
                    Icon(Icons.payment, size: 32,
                        semanticLabel: 'Paiement'),
                    Text('Paiement'),
                  ],
                ),

                Column(
                  children: const [
                    Icon(Icons.person, size: 32,
                        semanticLabel: 'Profil'),
                    Text('Profil'),
                  ],
                ),

                Column(
                  children: const [
                    Icon(Icons.notifications, size: 32,
                        semanticLabel: 'Notifications'),
                    Text('Notifications'),
                  ],
                ),

                // Seule cette icône est cliquable
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.book,
                        size: 32,
                        semanticLabel: 'Cours',
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Icône cliquée'),
                          ),
                        );
                      },
                    ),
                    const Text('Cours'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
