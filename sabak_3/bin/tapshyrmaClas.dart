/*
10 class tuzup keluu
3 for loop misal
3 if else ge misal
makala*
*/

void main(List<String> args) {
  Olko ind = Olko(
    name: 'India',
    ayanty: 3287469,
    til: Til(
      name: 'Indian',
      tamgaSany: 46,
      tangalar: ['a', 'b'],
      sozdor: ['mera', 'tera'],
    ),
    kalky: 138000000,
    shaarlar: ['Chennai', 'Hydarabad', 'Mumbai'],
    egemenduubu: true,
  );
  print(ind.kalky);
  print(ind.ayanty);
  print(ind.egemenduubu);
  print(ind.name);
  print(ind.til.name);
  print(ind.til.tangalar);
}

String a = 'a';

class Olko {
  String name;
  double ayanty;
  Til til;
  int kalky;
  List shaarlar;
  bool egemenduubu;
  Olko({
    required this.name,
    required this.ayanty,
    required this.til,
    required this.kalky,
    required this.shaarlar,
    required this.egemenduubu,
  });
}

class Til {
  String name;
  int tamgaSany;
  List tangalar;
  List sozdor;
  Til({
    required this.name,
    required this.tamgaSany,
    required this.tangalar,
    required this.sozdor,
  });
}
