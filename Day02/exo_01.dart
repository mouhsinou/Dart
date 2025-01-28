import 'dart:math';

analyserLettre(String lettre) {
  print(" --------------Resultat de l' Analyse avec le protocole Alpha-------------------");
  protocoleAlpha(lettre);
  print("************************Resultat de l' Analyse avec le protocole Beta********************");
  lettre = protocolebeta(lettre);
  print(lettre);
  print(" --------------------- Resultat de l' Analyse avec le protocole gamma --------------------");
  lettre = protocolegamma(lettre);
  print(lettre);
   print(" **************** Resultat de l' Analyse avec le protocole Delta ********************");
  protocoleDelta(lettre);
   print(" -----------------Resultat de l' Analyse avec le protocole de sécurité ------------------------");
  protocoledesecurite(lettre);
}

void protocoleAlpha(String message) {

  int longueurTotale = message.length;
  print('Longueur totale du message: $longueurTotale');


  List<String> mots = message.split(' ');
  print('Liste des mots: $mots');


  Map<String, int> frequenceMots = {};
  for (String mot in mots) {
    String motNettoye = mot.replaceAll(RegExp(r'[^\w\s]'), '').toLowerCase();
    if (motNettoye.isNotEmpty) {
      frequenceMots[motNettoye] = (frequenceMots[motNettoye] ?? 0) + 1;
    }
  }
  print('Motifs récurrents:');
  frequenceMots.forEach((mot, count) {
    if (count > 1) {
      print('  "$mot" apparaît $count fois');
    }
  });
}

String protocolebeta(String message) {
  print("Le miroir de la lettre est : ");
  String miroir = message.split('').reversed.join('');
  print(miroir);
  String messagefinale =
      message.replaceAllMapped(RegExp(r'\b(agent|Agent)\b'), (match) {
    if (match.group(0) == 'Agent') {
      return 'Espion';
    } else {
      return 'espion';
    }
  });

  return messagefinale;
}

String protocolegamma(String message) {
  if (message.toLowerCase().startsWith("cher")) {
    print("Le message débute par Cher.");
  } else {
    print("La lettre ne debute pas par Cher. ");
  }
  if (message.toLowerCase().endsWith("cordialement")) {
    print("Le message se termine par cordialement ");
  } else {
    print("La lettre ne se termine pas par cordialement ");
  }
  String messagereduis = message.replaceAll(RegExp(r'\s+'), ' ');

  print("Message avec redution des espaces");
  print(messagereduis);
  String messagefinale = messagereduis.trim();

  return messagefinale;
}

void protocoleDelta(String message){
  print("La lettre en majuscule");
  String majuscule = message.toUpperCase();
  print(majuscule);
  print("La lettre en minuscule");
  String minuscule = message.toLowerCase();
  print(minuscule);
  print("Extraction du 43ème caractère");
  if(message.length>=43){
    print(message[42]);
  }
  else{
    print("Le message n'atteint pas 43 caractères");
  }
}

void protocoledesecurite(String message){
   message= message.replaceAll(RegExp(r'\s+'), ' ');
   message = message.trim();
   if(message.isEmpty){
    print("Le message est vide après la suppression des espaces ");
   }
   else{
    print("Le message n'est pas vide  après la suppression des espaces");
   }
   List<String> chiffres = message.split('').where((char) => RegExp(r'\d').hasMatch(char)).toList();

  print("Les chiffres extraits sont : $chiffres");
}

void main() {
  String message =
      "Cher agent X, \n J'ai aperçu le chat noir    au point de rendez-vous 7.L'agent Johnson était également présent.    Le code secret 42 a été activé. \n Notre agent de liaison vous contactera à 23h Cordialement    ";
      print(message);
  analyserLettre(message);
}
