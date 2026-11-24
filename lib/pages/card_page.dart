
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cours = [
      {
        'titre': 'Développement Mobile',
        'description': 'Apprendre à créer des applications avec Flutter.',
        'image':
        'https://images.unsplash.com/photo-1516321318423-f06f85e504b3',
      },
      {
        'titre': 'Programmation Java',
        'description': 'Découvrir la programmation orientée objet avec Java.',
        'image':
        'https://images.unsplash.com/photo-1515879218367-8466d910aaa4',
      },
      {
        'titre': 'Cybersécurité',
        'description': 'Comprendre les bases de la sécurité informatique.',
        'image':
        'https://images.unsplash.com/photo-1510915361894-db8b60106cb1',
      },
      {
        'titre': 'Bases de données',
        'description': 'Apprendre à gérer et organiser les données.',
        'image':
        'https://images.unsplash.com/photo-1544383835-bda2bc66a55d',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des cours'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: cours.length,
        itemBuilder: (context, index) {
          final coursActuel = cours[index];

          return InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Vous avez cliqué sur : ${coursActuel['titre']}',
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 20),
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    coursActuel['image']!,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coursActuel['titre']!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          coursActuel['description']!,
                          style: const TextStyle(fontSize: 15),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Détails : ${coursActuel['titre']}',
                                    ),
                                  ),
                                );
                              },
                              child: const Text('Détails'),
                            ),
                            const SizedBox(width: 10),
                            FilledButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Inscription à ${coursActuel['titre']}',
                                    ),
                                  ),
                                );
                              },
                              child: const Text('S’inscrire'),
                            ),
                          ],
                        ),
                      ],
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
