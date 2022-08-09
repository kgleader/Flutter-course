void main(List<String> args) {
  Dostor my = Dostor(
      name: ['Nara', 'Simsima', 'Nyamat', 'Chonu'],
      dostordunSany: 10,
      ulutu: ['mongol', 'arab', 'indianka', 'korey'],
      chynygyDostorbu: true);
  print(my.dostordunSany);
  print(my.chynygyDostorbu);
  print(my.name);
  print(my.ulutu);
}

String a = 'a';

class Dostor {
  List name;
  int dostordunSany;
  List ulutu;
  bool chynygyDostorbu;
  Dostor({
    required this.name,
    required this.dostordunSany,
    required this.ulutu,
    required this.chynygyDostorbu,
  });
}
