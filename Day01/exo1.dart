double calculVolumePave(double longueur,double largeur,double hauteur){
  return (longueur*largeur*hauteur);
}

double calculSurfaceBasePave(double longueur, double largeur) {
  return longueur * largeur;
}

double calculPerimetreBasePave(double longueur, double largeur) {
  return 2 * (longueur + largeur);
}