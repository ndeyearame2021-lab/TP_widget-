
import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({super.key});

  @override
  State<ListTilePage> createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  bool notificationsActivees = true;
  bool confidentialiteActivee = false;

  int? ligneSelectionnee;

  // Afficher une boîte de dialogue de confirmation
  void afficherConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Déconnexion'),
          content: const Text(
            'Voulez-vous vraiment vous déconnecter ?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Annuler'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(context);

                ScaffoldMessenger.of(this.context).showSnackBar(
                  const SnackBar(
                    content: Text('Déconnexion confirmée'),
                  ),
                );
              },
              child: const Text('Confirmer'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        children: [
          ListTile(
            selected: ligneSelectionnee == 0,
            selectedTileColor: Colors.indigo.shade100,
            leading: const Icon(Icons.person, color: Colors.indigo),
            title: const Text('Compte'),
            subtitle: const Text('Gérer les informations du compte'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              setState(() {
                ligneSelectionnee = 0;
              });
            },
          ),

          const Divider(),

          SwitchListTile(
            selected: ligneSelectionnee == 1,
            selectedTileColor: Colors.indigo.shade100,
            secondary: const Icon(
              Icons.notifications,
              color: Colors.indigo,
            ),
            title: const Text('Notifications'),
            subtitle: const Text('Activer ou désactiver les notifications'),
            value: notificationsActivees,
            activeColor: Colors.indigo,
            onChanged: (bool valeur) {
              setState(() {
                notificationsActivees = valeur;
                ligneSelectionnee = 1;
              });
            },
          ),

          const Divider(),

          ListTile(
            selected: ligneSelectionnee == 2,
            selectedTileColor: Colors.indigo.shade100,
            leading: const Icon(Icons.language, color: Colors.indigo),
            title: const Text('Langue'),
            subtitle: const Text('Choisir la langue de l’application'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              setState(() {
                ligneSelectionnee = 2;
              });
            },
          ),

          const Divider(),

          CheckboxListTile(
            selected: ligneSelectionnee == 3,
            selectedTileColor: Colors.indigo.shade100,
            secondary: const Icon(Icons.lock, color: Colors.indigo),
            title: const Text('Confidentialité'),
            subtitle: const Text(
              'Gérer vos données personnelles, les autorisations '
                  'de l’application et les paramètres de sécurité de votre compte.',
            ),
            isThreeLine: true,
            value: confidentialiteActivee,
            activeColor: Colors.indigo,
            onChanged: (bool? valeur) {
              setState(() {
                confidentialiteActivee = valeur!;
                ligneSelectionnee = 3;
              });
            },
          ),

          const Divider(),

          ListTile(
            selected: ligneSelectionnee == 4,
            selectedTileColor: Colors.indigo.shade100,
            leading: const Icon(Icons.help, color: Colors.indigo),
            title: const Text('Aide'),
            subtitle: const Text('Consulter le centre d’aide'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              setState(() {
                ligneSelectionnee = 4;
              });
            },
          ),

          const Divider(),

          // Ligne Déconnexion
          ListTile(
            selected: ligneSelectionnee == 5,
            selectedTileColor: Colors.red.shade50,
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text(
              'Déconnexion',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.red,
            ),
            onTap: () {
              setState(() {
                ligneSelectionnee = 5;
              });

              afficherConfirmation();
            },
          ),
        ],
      ),
    );
  }
}
