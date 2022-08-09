/*
Bir List tuzup anyn ozgacholuktorun koldonuu
Bir Set tuzup anyn ozgacholuktorun koldonuu
*/
void main(List<String> args) {
  List birList = [11, "Manas airpot", true, 12.3];
  print(birList);
  print(birList.length);
  print(birList[1]);
  print(birList.reversed);
  print(birList.runtimeType);
  print(birList.first);
  birList.add('Kop koldonulgandar');
  print(birList);
  birList.clear();
  print(birList);
}
