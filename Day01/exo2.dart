import 'dart:math';

// Fonction qui génère un nombre aléatoire entre 1 et 6
int lancerDe() {
  return Random().nextInt(6) + 1;
}

// Fonction qui effectue plusieurs lancers et affiche les résultats
void lancerDeMultiple(int nombreDeLancers) {
  print("Lancer de $nombreDeLancers dés :");
  for (int i = 0; i < nombreDeLancers; i++) {
    print("Lancer ${i + 1} : ${lancerDe()}");
  }
}

// Fonction qui relance le dé si le résultat est inférieur à 3
void lancerDeAvecConditions(int nombreDeLancers) {
  print("Lancer de dés avec conditions :");
  for (int i = 0; i < nombreDeLancers; i++) {
    int resultat;
    do {
      resultat = lancerDe();
    } while (resultat < 3);

    print("Lancer ${i + 1} : $resultat");
  }
}

// Fonction qui effectue plusieurs lancers jusqu'à obtenir un certain nombre de 6
void lancerDeEnBoucle(int nombreDeLancers) {
  print("Lancer de dés jusqu'à obtenir $nombreDeLancers fois le 6 :");
  int compteur = 0;
  int essais = 0;

  while (compteur < nombreDeLancers) {
    int resultat = lancerDe();
    essais++;
    print("Lancer $essais : $resultat");

    if (resultat == 6) {
      compteur++;
    }
  }
  print("Nombre total de lancers : $essais");
}

void main() {
  print("=== Test des fonctions ===\n");

  lancerDeMultiple(5);
  print("\n");

  lancerDeAvecConditions(5);
  print("\n");

  lancerDeEnBoucle(3);
}
