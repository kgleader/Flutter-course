import 'dart:async';
import 'dart:html';

import 'package:flutter_test/flutter_test.dart';

int variable12 = 12;
//Print(variable12);

void main() {
  //print(variable12);
  //String озгорулмо  String formatyn kabyl alat
  String stringVariable = '123bbb';
  //num иррационалдык сан тиби
  num btunSan = 4;
  num bolchokSan = 3.9;

  //butun san tibi
  int dayinButunSan = 5;

  // bolchok san tibi
  double datymBolchokSan = 3.8;

  //Bool (tuura je kata tibi)
  bool boolenType = false;

  //var ozgormonun tibi (universalduu tip)
  var varType = 12;
  //varType = 12.5;
  //dynamic

  dynamic dynamicType = true;
  dynamicType = 12;
  dynamicType = 'Meerim';
  //print(stringVariable);

  func1();
}

func1() {
  dynamic MeerimEje = "Meerim";
  print(MeerimEje);
  MeerimEje = 13;
  MeerimEje = 13.2;
  MeerimEje = true;
}
