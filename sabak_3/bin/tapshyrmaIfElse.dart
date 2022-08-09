void main(List<String> args) {
  // chynJeJalganynBil(ooba);

  // sandyTap(12);

  chynJeJalgan(true);
}

void chynJeJalgan(bool chyndykby) {
  if (chyndykby) {
    // ignore: avoid_print
    print('Ooba chyndyk');
  } else {
    // ignore: avoid_print
    print('Jok jalgan');
  }
}

void sandyTap(num p) {
  int a = 8;
  if (p == a) {
    // ignore: avoid_print
    print('Sandy tuura taap aldyn, tuura joop $a');
  } else if (p < 20 && p > 1) {
    // ignore: avoid_print
    print('bir az tuura emes');
  } else {
    // ignore: avoid_print
    print('Jok, tuura tappay kaldyn.');
  }
}
