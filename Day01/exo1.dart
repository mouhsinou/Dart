import 'dart:math';

double calculVolumePave(double longueur, double largeur, double hauteur) {
  return longueur * largeur * hauteur;
}

double calculSurfaceTotalePave(double longueur, double largeur, double hauteur) {
  return 2 * (longueur * largeur + longueur * hauteur + largeur * hauteur);
}

double calculSurfaceBasePave(double longueur, double largeur) {
  return longueur * largeur;
}

double calculPerimetreBasePave(double longueur, double largeur) {
  return 2 * (longueur + largeur);
}

double calculDiagonalePave(double longueur, double largeur, double hauteur) {
  return sqrt(pow(longueur, 2) + pow(largeur, 2) + pow(hauteur, 2));
}

void main() {
  double longueur = 5.0;
  double largeur = 3.0;
  double hauteur = 4.0;

  print('Volume du pavé: ${calculVolumePave(longueur, largeur, hauteur)}');
  print('Surface totale du pavé: ${calculSurfaceTotalePave(longueur, largeur, hauteur)}');
  print('Surface de la base du pavé: ${calculSurfaceBasePave(longueur, largeur)}');
  print('Périmètre de la base du pavé: ${calculPerimetreBasePave(longueur, largeur)}');
  print('Diagonale du pavé: ${calculDiagonalePave(longueur, largeur, hauteur)}');
}
