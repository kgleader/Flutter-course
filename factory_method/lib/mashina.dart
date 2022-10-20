class Mashina {
  final String marka;
  final int jyl;
  final String nomer;

  const Mashina({
    required this.marka,
    required this.jyl,
    required this.nomer,
  });
}

Map response = {
  "marka": "mers",
  "jyl": 2022,
  "nomer": "AB9021",
};

void main(List<String> args) {
  final mers = Mashina(
    marka: response("marka"),
    jyl: response("lyl"),
    nomer: respomse("nomer"),
  );
  print(mers.nomer);
}
