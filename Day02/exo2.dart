import 'dart:math';
void calculerTrajet(int distance) {
  // Protocole Énergétique Principal
  String mode = distance % 2 == 0 ? "Route Rapide" : "Route Éco";
  int recharges = (distance / 10).ceil();
  print("Mode : $mode, Recharges nécessaires : $recharges");

  //  Protocole Gestion d'énergie
  double consommation = distance * distance.toDouble();
  if (distance > 50) {
    consommation *= 1.2; // Boost Longue Distance
  }
  print("Consommation estimée : $consommation unités énergétiques");

  //  Protocole Points de contrôle
  List<String> pointsDeRavitaillement = [];
  for (int i = 5; i <= distance; i += 5) {
    pointsDeRavitaillement.add(i.toString().padLeft(3, '0') + " km");
  }
  print("Points de ravitaillement : $pointsDeRavitaillement");

  // Protocole de sécurité

  if (distance < 10 || distance > 100) {
    print("Alarme de sécurité : distance hors des limites opérationnelles !");
    return;
  } 
  List<int> pointsPuissance = [];
  int power = 1;
  while (true) {
    int powerDistance = 2.pow(power);
    if (powerDistance > distance) break;
    pointsPuissance.add(powerDistance);
    power++;
  }
  print("Points de Puissance : $pointsPuissance");
}
