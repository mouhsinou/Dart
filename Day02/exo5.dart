class Lieu {
  String nom;
  String description;
  int distance;

  Lieu(this.nom, this.description, this.distance);
}

void main() {
  List<Lieu> carte = [
    Lieu("Île Perdue", "Un endroit mystérieux avec des dangers.", 20),
    Lieu("Montagne Dorée", "Remplie de richesses mais difficile d'accès.", 50)
  ];

  // Enregistrement des Lieux
  carte.add(Lieu("Forêt Sombre", "Peuplée d'animaux étranges.", 30));
  print("Lieux enregistrés : ${carte.map((l) => l.nom).toList()}");

  // Retirer les Lieux
  carte.removeWhere((lieu) => lieu.nom == "Île Perdue");
  print("Lieux après suppression : ${carte.map((l) => l.nom).toList()}");

  // Analyse des Indices
  carte.forEach((lieu) {
    print("Lieu : ${lieu.nom}, Longueur description : ${lieu.description.length}");
    if (lieu.description.contains("danger") || lieu.description.contains("disparu")) {
      print("Alerte : ${lieu.nom} contient des indices inquiétants !");
    }
  });

  // Suivi de la Carte
  Map<String, List<String>> suiviExplorateurs = {};
  suiviExplorateurs["Île Perdue"] = ["Explorateur 1", "Explorateur 2"];
  print("Suivi explorateurs : $suiviExplorateurs");
}
