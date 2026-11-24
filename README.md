UNIVERSITÉ MUNDIAPOLIS
RAPPORT DE TRAVAUX PRATIQUES
Flutter – Widgets Icon, CircleAvatar, Card et ListTile
Module : Développement Mobile
Filière / niveau : 2ACINFO
Enseignant : Pr. Ayad


Réalisé par	Nom et prénom : Ndeye aram SARR, Jamal OUEDRAOGO, Medina MBEDI
Année universitaire	2026-2027

 
1. Présentation du TP
Ce TP a pour objectif de découvrir et de mettre en pratique quatre widgets Flutter : Icon, CircleAvatar, Card et ListTile. Les exercices permettent de construire progressivement une interface mobile, puis de réunir les widgets dans une application d’annuaire étudiant.
1.1 Objectifs pédagogiques
•	Personnaliser des icônes : taille, couleur, accessibilité et interaction.
•	Afficher des avatars avec des initiales, une image réseau ou une image locale.
•	Organiser des informations dans des cartes avec différentes présentations.
•	Construire des lignes de liste avec des éléments à gauche, au centre et à droite.
•	Combiner les widgets dans un annuaire étudiant interactif.


2. Partie 1 – Widget Icon
Objectif : afficher et personnaliser des icônes Material et Cupertino, puis rendre une icône interactive.
2.1 Travail réalisé
•	Création de IconPage avec trois icônes (accueil, favori, école) de tailles 24, 40 et 64.
•	Création d’une grille de huit icônes représentant des services universitaires, avec un texte sous chaque icône.
•	Ajout d’un semanticLabel à chaque icône de la grille.
•	Utilisation d’au moins une icône CupertinoIcons.
•	Ajout d’un IconButton affichant le SnackBar « Icône cliquée ».
Description de la grille et des icônes choisies :
Preuve  – Trois icônes de tailles différentes avec code

<img width="1015" height="579" alt="image" src="https://github.com/user-attachments/assets/c26d74d1-e3f2-41b8-9ca4-23db6484fa0e" />


<img width="458" height="132" alt="image" src="https://github.com/user-attachments/assets/e1fc95ce-0ab8-4de4-806f-bd7cb6f3fae8" />





Preuve– Grille des huit services universitaires

<img width="1016" height="617" alt="image" src="https://github.com/user-attachments/assets/b2db3bb4-4be4-461c-9c17-1428f1f18147" />

<img width="1013" height="546" alt="image" src="https://github.com/user-attachments/assets/e4a569f7-fa3d-4c96-835b-8828a273780f" />

<img width="1015" height="551" alt="image" src="https://github.com/user-attachments/assets/37b235a3-8880-444f-8708-3bde14c28d8a" />



3. Partie 2 – Widget CircleAvatar
Objectif : afficher des avatars sous différentes formes et générer des initiales automatiquement.
3.1 Travail réalisé
•	Affichage de trois variantes : initiales, image réseau et icône.
•	Ajout d’une image locale dans assets/images/ et déclaration dans pubspec.yaml.
•	Création de la fonction initiales(String nomComplet) et génération de cinq avatars.
•	Attribution d’une couleur différente à chaque avatar à partir de Colors.primaries.
•	Création d’un avatar avec bordure à l’aide de deux CircleAvatar imbriqués.
•	Bonus éventuel : badge vert « en ligne » avec Stack et Positioned.

Preuve  – Icône Cupertino et test du bouton / SnackBar
<img width="994" height="507" alt="image" src="https://github.com/user-attachments/assets/e80b7814-aa56-493b-bbc0-475a98f225cf" />

<img width="982" height="576" alt="image" src="https://github.com/user-attachments/assets/d960e386-0d4e-40af-a66b-480c4c573be4" />


Ajout d’une icone à partir d’une image locale 

<img width="930" height="439" alt="image" src="https://github.com/user-attachments/assets/395fb2c0-e5eb-448f-b992-872f351fd6b5" />



Ajout des 5 étudiants et de la fonction d’initiales

<img width="1015" height="749" alt="image" src="https://github.com/user-attachments/assets/1e902f57-5f16-47a0-b969-71387e437b33" />
<img width="1015" height="550" alt="image" src="https://github.com/user-attachments/assets/e50c20d8-ae57-42a4-8227-eb40a7c573ba" />


Avatar avec une bordure blanche et un badge ‘en ligne’
<img width="1015" height="659" alt="image" src="https://github.com/user-attachments/assets/421e1751-b61b-4d73-b10a-0763ccfb1a75" />


5. Partie 3 – Widget Card
Objectif : regrouper des informations dans des cartes et comparer plusieurs styles de Card.
5.1 Travail réalisé
•	Création de trois cartes : Card avec elevation 4, Card.filled et Card.outlined.
•	Création d’une carte de cours avec image, titre, description et deux boutons (Détails et S’inscrire).
•	Test de clipBehavior: Clip.antiAlias sur les coins de l’image.
•	Affichage de quatre cartes de cours avec ListView.builder et List<Map<String, String>>.
•	Ajout d’InkWell pour rendre chaque carte cliquable et afficher un SnackBar avec le nom du cours.
Décrire les différences visuelles observées entre Card, Card.filled et Card.outlined :
............................................................................................................................
............................................................................................................................
Preuve  – Comparaison des trois types de Card
<img width="1016" height="636" alt="image" src="https://github.com/user-attachments/assets/cba443c0-ee3e-4a90-9927-e553b6a6da66" />


Preuve 10 – Carte de cours avec image et boutons
 <img width="1015" height="666" alt="image" src="https://github.com/user-attachments/assets/b439e210-0c2b-4e2e-a172-bfe1da903b16" />


Preuve 11 – Liste des quatre cartes de cours
<img width="1015" height="525" alt="image" src="https://github.com/user-attachments/assets/241461bf-d21c-43f7-a75b-c827c24598c3" />




Preuve 12 – SnackBar affiché après le clic sur une carte
<img width="751" height="662" alt="image" src="https://github.com/user-attachments/assets/9a298b09-764a-4b0c-8aa4-c2597d67bce8" />




6. Partie 4 – Widget ListTile
Objectif : réaliser un écran Paramètres avec des lignes standardisées et des interactions.
6.1 Travail réalisé
•	Création d’un écran Paramètres comportant au moins six lignes : compte, notifications, langue, confidentialité, aide et déconnexion.
•	Ajout d’une icône leading et d’une flèche trailing pour chaque ligne.
•	Séparation des lignes avec Divider ou ListTile.divideTiles.
•	Ajout d’un SwitchListTile et d’un CheckboxListTile fonctionnels.
•	Utilisation de isThreeLine: true sur une ligne avec un long sous-titre.
•	Gestion de la sélection : une seule ligne sélectionnée à la fois.
•	Affichage d’un AlertDialog de confirmation pour la déconnexion, avec texte et icône rouges.
Preuve 13 – Écran Paramètres avec les six lignes
<img width="1015" height="579" alt="image" src="https://github.com/user-attachments/assets/41881b0f-14b9-4510-8e2b-b681e4fe7882" />





Preuve 14 – SwitchListTile et CheckboxListTile fonctionnels
<img width="1015" height="673" alt="image" src="https://github.com/user-attachments/assets/b43603dd-8619-478b-add6-ca771b9cbd54" />



Preuve 15 – Ligne sélectionnée et exemple de isThreeLine
<img width="1015" height="659" alt="image" src="https://github.com/user-attachments/assets/c12e8787-4bde-485d-a6cf-3ee26a268518" />




Preuve 16 – Boîte de dialogue de confirmation de déconnexion
<img width="1015" height="698" alt="image" src="https://github.com/user-attachments/assets/994f4541-d4b2-4f76-9a38-076397446b23" />





7. Partie 5 – Mini-projet : Annuaire 2ACINFO
Objectif : réunir les quatre widgets étudiés dans une interface d’annuaire étudiant.
7.1 Fonctionnalités demandées
•	Création de la classe Etudiant avec prénom, nom, email, téléphone, photoUrl optionnelle et favori.
•	Création d’une liste d’au moins huit étudiants fictifs.
•	Affichage de chaque étudiant dans une Card contenant un ListTile.
•	Affichage d’une photo ou des initiales dans CircleAvatar, selon la disponibilité de photoUrl.
•	Affichage du prénom, du nom et de l’email.
•	Étoile cliquable permettant d’ajouter ou de retirer un favori.
•	Ouverture d’une page de détail avec Navigator.push, un grand avatar et les informations de contact.
•	Affichage du nombre de favoris dans l’AppBar.
Preuve 17 – Écran principal de l’annuaire avec huit étudiants plus ajout et retrait d’un favori
<img width="1015" height="669" alt="image" src="https://github.com/user-attachments/assets/e09e3a78-04ca-4536-aeb6-073deb5e1229" />



Preuve 18 – Fonctionnalités bonus (facultatif)
<img width="1015" height="624" alt="image" src="https://github.com/user-attachments/assets/3df2352f-e727-43f8-a1a0-eb59b99cf472" />
<img width="463" height="686" alt="image" src="https://github.com/user-attachments/assets/93e03a06-9d4e-45e9-a672-8232163ea287" />





ANNEXE : QUESTIONS ET RÉPONSES SUR LES NOTIONS ET WIDGETS FLUTTER UTILISÉS
Introduction
Cette annexe présente les principales questions relatives aux notions et aux widgets Flutter utilisés durant la réalisation du TP. Elle permet de revenir sur les fonctionnalités développées, de comprendre le rôle des différents composants et de justifier les choix techniques effectués.
________________________________________
Réponses aux questions 
Partie 1 – Icon

Question : Quelle différence entre Icon et IconButton ? Pourquoi Icon seul ne réagit-il pas au toucher ?
Réponse : Icon est purement décoratif : il affiche un pictogramme sans gestion tactile, sans callback ni effet d'encre. IconButton est un composant Material interactif qui encapsule une icône dans une zone cliquable, gère l'état pressed/hover, expose onPressed, tooltip et respecte l'accessibilité. Icon seul ne réagit pas au toucher car il n'expose aucun callback et n'est pas enveloppé dans un détecteur de gestes ; il faudrait l'entourer d'un GestureDetector ou d'un InkWell.

Partie 2 – CircleAvatar

Question : Que se passe-t-il si l'URL de l'image est invalide et qu'aucun child n'est fourni ? Comment prévoir un affichage de secours ?
Réponse : Le cercle reste vide, rempli uniquement de la backgroundColor, sans message d'erreur visible. Pour prévoir un secours, on fournit toujours un child (initiales ou Icon(Icons.person)) affiché tant que l'image n'est pas chargée ou en cas d'échec, et on renseigne onBackgroundImageError pour journaliser ou remplacer l'état via setState.

Partie 3 – Card

Question : Pourquoi place-t-on l'InkWell à l'intérieur de la Card plutôt qu'autour ?
Réponse : Pour que l'effet d'encre (ripple) soit peint sur la bonne surface Material et découpé par le clipBehavior de la carte, avec une zone tactile alignée sur la forme arrondie. À l'extérieur, le ripple pourrait déborder des coins ou être peint sur une surface différente.

Partie 4 – ListTile

Question : Quels avantages apporte ListTile par rapport à un Row construit à la main ?
Réponse : ListTile respecte automatiquement les spécifications Material (hauteurs, espacements, contentPadding), gère nativement leading/title/subtitle/trailing, les interactions (onTap, onLongPress), l'état selected, la version dense, l'accessibilité et le thème. Il propose des variantes prêtes à l'emploi (SwitchListTile, CheckboxListTile) et reste plus concis et cohérent qu'un Row manuel.

________________________________________
Conclusion
La réalisation de ce TP a permis de découvrir plusieurs widgets fondamentaux de Flutter et de comprendre leur utilisation dans la construction d'interfaces mobiles. Les différentes étapes ont également permis de mettre en pratique la gestion des événements, des états, des listes, des données et de la navigation entre les pages.
Le mini-projet de l'annuaire étudiant a permis de regrouper ces notions dans une application plus complète, intégrant notamment la recherche, les favoris, la suppression et l'affichage des détails des étudiants.


