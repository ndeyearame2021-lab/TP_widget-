
import 'package:flutter/material.dart';

// Fonction qui récupère les initiales
String initiales(String nomComplet) {
  List<String> mots = nomComplet.trim().split(' ');

  String resultat = '';

  for (String mot in mots) {
    if (mot.isNotEmpty) {
      resultat += mot[0].toUpperCase();
    }
    if (resultat.length == 2) {
      break;
    }
  }

  return resultat;
}

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {

    // Liste des étudiants
    final List<String> etudiants = [
      'Yacine Ndiaye',
      'Fati Ba',
      'Mohamed Dame',
      'Jamal Idriss',
      'Mbedi Mangana',
    ];

    // Couleurs des avatars
    final List<Color> couleurs = [
      Colors.indigo,
      Colors.pink,
      Colors.green,
      Colors.blue,
      Colors.purple,
    ];

    return Scaffold(
      backgroundColor: Colors.blueGrey[800],

      appBar: AppBar(
        title: const Text(
          'Découverte de CircleAvatar',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 1. Avatar avec des initiales
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.white,
                child: Text('NS'),
              ),

              const SizedBox(height: 20),

              // 2. Avatar avec une image Internet
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=12',
                ),
              ),

              const SizedBox(height: 20),

              // 3. Avatar avec une icône
              const CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
              ),

              const SizedBox(height: 20),

              // 4. Avatar avec une image locale
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/images/picture1.png',
                ),
              ),

              const SizedBox(height: 20),

              // 5. Avatar avec une bordure blanche
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'assets/images/picture1.png',
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 6. Avatar avec badge "En ligne"
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/picture1.png',
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'Les Profils des étudiants',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              // 7. Génération des 5 avatars
              for (int i = 0; i < etudiants.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: couleurs[i],
                        child: Text(
                          initiales(etudiants[i]),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      Text(
                        etudiants[i],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
