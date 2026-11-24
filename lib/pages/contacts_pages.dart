
import 'package:flutter/material.dart';
import '../models/etudiant.dart';
import '../data/stud.dart';

class ContactsPage extends StatefulWidget {
  final bool modeSombre;
  final VoidCallback changerTheme;

  const ContactsPage({
    super.key,
    required this.modeSombre,
    required this.changerTheme,
  });

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  String recherche = '';

  final List<Color> couleurs = [
    Colors.indigo,
    Colors.teal,
    Colors.deepOrange,
    Colors.purple,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    final etudiantsFiltres = etudiants
        .where((e) =>
        e.nom.toLowerCase().contains(recherche.toLowerCase()))
        .toList();

    etudiantsFiltres.sort(
          (a, b) => a.nom.compareTo(b.nom),
    );

    final Map<String, List<Etudiant>> groupes = {};

    for (var e in etudiantsFiltres) {
      final lettre = e.nom[0].toUpperCase();
      groupes.putIfAbsent(lettre, () => []);
      groupes[lettre]!.add(e);
    }

    final nbFavoris = etudiants.where((e) => e.favori).length;

    return Scaffold(
      appBar: AppBar(
        title: Text('Annuaire 2ACINFO ($nbFavoris ★)'),
        actions: [
          IconButton(
            onPressed: widget.changerTheme,
            icon: Icon(
              widget.modeSombre
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            tooltip: widget.modeSombre
                ? 'Mode clair'
                : 'Mode sombre',
          ),
        ],
      ),

      body: Column(
        children: [
          // Barre de recherche
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Rechercher par nom...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (valeur) {
                setState(() {
                  recherche = valeur;
                });
              },
            ),
          ),

          // Liste des étudiants regroupés
          Expanded(
            child: etudiantsFiltres.isEmpty
                ? const Center(
              child: Text('Aucun étudiant trouvé.'),
            )
                : ListView(
              children: groupes.entries.expand((groupe) {
                return [
                  // En-tête du groupe
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Text(
                      groupe.key,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .colorScheme
                            .primary,
                      ),
                    ),
                  ),

                  // Cartes des étudiants
                  ...groupe.value.map((e) {
                    final index = etudiants.indexOf(e);

                    return Dismissible(
                      key: ValueKey(e.email),
                      direction: DismissDirection.endToStart,

                      background: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        padding: const EdgeInsets.only(right: 20),
                        alignment: Alignment.centerRight,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),

                      onDismissed: (direction) {
                        setState(() {
                          etudiants.remove(e);
                        });

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '${e.prenom} ${e.nom} supprimé',
                            ),
                          ),
                        );
                      },

                      child: Card(
                        elevation: 3,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor:
                            couleurs[index % couleurs.length],
                            child: Text(
                              e.initiales,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          title: Text('${e.prenom} ${e.nom}'),
                          subtitle: Text(e.email),

                          trailing: IconButton(
                            icon: Icon(
                              e.favori
                                  ? Icons.star
                                  : Icons.star_border,
                              color: e.favori
                                  ? Colors.amber
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                e.favori = !e.favori;
                              });
                            },
                          ),

                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailEtudiantPage(
                                      etudiant: e,
                                      couleur: couleurs[
                                      index % couleurs.length],
                                    ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  }),
                ];
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

// PAGE DE DÉTAIL

class DetailEtudiantPage extends StatelessWidget {
  final Etudiant etudiant;
  final Color couleur;

  const DetailEtudiantPage({
    super.key,
    required this.etudiant,
    required this.couleur,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails de l’étudiant'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: couleur,
                child: Text(
                  etudiant.initiales,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Text(
                '${etudiant.prenom} ${etudiant.nom}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email'),
                subtitle: Text(etudiant.email),
              ),

              const Divider(),

              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Téléphone'),
                subtitle: Text(etudiant.telephone),
              ),

              const Divider(),

              const ListTile(
                leading: Icon(Icons.school),
                title: Text('Filière'),
                subtitle: Text('Informatique - 2ACINFO'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
