
class Etudiant {
  final String prenom;
  final String nom;
  final String email;
  final String telephone;
  final String? photoUrl;
  bool favori;

  Etudiant({
    required this.prenom,
    required this.nom,
    required this.email,
    required this.telephone,
    this.photoUrl,
    this.favori = false,
  });

  String get initiales =>
      '${prenom[0]}${nom[0]}'.toUpperCase();
}
