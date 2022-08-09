void main(List<String> args) {
  Hospital indu = Hospital(
    name: 'BLK - MAX',
    jekemenchik: true,
    achylganJyly: 2000,
    doctorloru: ['Dr.Abhideep', 'Dr.Sanjay', 'Dr.Manaw'],
  );

  print(indu.name);
  print(indu.jekemenchik);
  print(indu.achylganJyly);
  print(indu.doctorloru);
}

String a = 'a';

class Hospital {
  String name;
  bool jekemenchik;
  int achylganJyly;
  List doctorloru;
  Hospital({
    required this.name,
    required this.jekemenchik,
    required this.achylganJyly,
    required this.doctorloru,
  });
}
