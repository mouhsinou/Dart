void gererPlaylist(List<String> chansons) {
  // Mode Ajout
  chansons.add("Nouvelle chanson");
  print("Chansons après ajout : $chansons");

  // Mode Suppression
  chansons.remove("Shape of You");
  print("Chansons après suppression : $chansons");

  // Mode Tri
  chansons.sort();
  print("Tri alphabétique A→Z : $chansons");
  chansons.sort((a, b) => b.compareTo(a));
  print("Tri alphabétique Z→A : $chansons");

  // Mode Stats
  int totalChansons = chansons.length;
  double dureeMoyenne = totalChansons > 0 ? 3.5 : 0; // Exemple d'une durée moyenne
  print("Total chansons : $totalChansons, Durée moyenne : $dureeMoyenne minutes");

  // Mode Recherche
  print("Doublon 'Shape of You' ? ${chansons.contains("Shape of You")}");

  // Mode Lecture
  if (chansons.isNotEmpty) {
    print("Première chanson : ${chansons.first}, Dernière chanson : ${chansons.last}");
  }

  // Mode Shuffle
  chansons = chansons.reversed.toList();
  print("Playlist inversée : $chansons");

  // Mode Nettoyage
  chansons = chansons.toSet().toList();
  print("Playlist nettoyée : $chansons");
}
