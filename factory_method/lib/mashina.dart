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
  "cars": [
    {"marka": "mers", "jyl": 2022, "nomer": "AB9021"},
    {"marka": "mers01", "jyl": 2012, "nomer": "AB9020"},
    {"marka": "mers02", "jyl": 2021, "nomer": "AB9022"},
    {"marka": "mers03", "jyl": 2020, "nomer": "AB9023"},
    {"marka": "mers04", "jyl": 2019, "nomer": "AB9024"},
  ]
};

void main(List<String> args) {
  final mers1 = Mashina(
    marka: response["cars"][0]["marka"],
    jyl: response["cars"][0]["lyl"],
    nomer: response["cars"][0]["nomer"],
  );
  final mers2 = Mashina(
    marka: response["cars"][1]["marka"],
    jyl: response["cars"][1]["lyl"],
    nomer: response["cars"][1]["nomer"],
  );
  print(mers1.nomer);
  print(mers2.nomer);
}
