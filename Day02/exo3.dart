void servirCafe(double quantiteCafe) {
  if (quantiteCafe < 0.1 || quantiteCafe > 10.0) {
    print("Quantité invalide : minimum 0.1 tasse, maximum 10 tasses.");
    return;
  }

  int tasses = quantiteCafe.ceil();
  int millilitres = tasses * 250;

  int partieEntiere = quantiteCafe.toInt();
  double partieDecimale = quantiteCafe - partieEntiere;

  print("Quantité : ${quantiteCafe.toStringAsFixed(2)} tasses restantes");
  print("Tasses standards : $tasses, Millilitres : $millilitres ml");
  print("Partie entière : $partieEntiere, Partie décimale : ${partieDecimale.toStringAsFixed(2)}");
}
