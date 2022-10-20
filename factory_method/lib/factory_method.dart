void main(List<String> args) {
  final d1 = const Dog('reks');
  print(d1.name);
  final d2 = Dog.dogTuz('Alabay');
  print(d2.name);
}

class Dog {
  const Dog(this.name);

  final String name;

  factory Dog.dogTuz(String value) {
    return Dog(value);
  }
}
