void main() {
  List<Map<String, dynamic>> personas = [
    {"edad": 30, "edu": "N", "sit": "D", "ciudad": 1120, "municipio": 111120, "estado": 11},
    {"edad": 40, "edu": "N", "sit": "D", "ciudad": 1120, "municipio": 111120, "estado": 11},
    {"edad": 20, "edu": "B", "sit": "E", "ciudad": 1130, "municipio": 111130, "estado": 11},
  ];

  Map<int, int> muniCondicion = {}; 
  Map<int, int> ciudadTotal = {};
  Map<int, int> ciudadCondicion = {};
  Map<int, int> profD = {};
  Map<int, int> totalEstado = {};

  for (var p in personas) {
    int mun = p["municipio"];
    int ciu = p["ciudad"];
    int est = p["estado"];

    muniCondicion.putIfAbsent(mun, () => 0);
    ciudadTotal.putIfAbsent(ciu, () => 0);
    ciudadCondicion.putIfAbsent(ciu, () => 0);
    profD.putIfAbsent(est, () => 0);
    totalEstado.putIfAbsent(est, () => 0);

    ciudadTotal[ciu] = ciudadTotal[ciu]! + 1;
    totalEstado[est] = totalEstado[est]! + 1;

    bool cumple = p["sit"] == "D" && p["edu"] == "N" && p["edad"] > 25;

    if (cumple) {
      muniCondicion[mun] = muniCondicion[mun]! + 1;
      ciudadCondicion[ciu] = ciudadCondicion[ciu]! + 1;
    }

    if (p["edu"] == "P" && p["sit"] == "D") {
      profD[est] = profD[est]! + 1;
    }
  }
  print("1) Cantidad por municipio:");
  muniCondicion.forEach((m, c) => print("Municipio $m → $c personas"));

  print("\n2) Ciudades con más del 50%:");
  ciudadCondicion.forEach((ciu, cond) {
    if (cond > ciudadTotal[ciu]! / 2) {
      print("Ciudad $ciu cumple (>50%)");
    }
  });

  print("\n3) Estado con mayor % de profesionales desempleados:");
  int mejorEstado = profD.keys.first;
  double mejorPorc = 0;

  profD.forEach((est, cant) {
    double porc = (cant / totalEstado[est]!) * 100;
    if (porc > mejorPorc) {
      mejorPorc = porc;
      mejorEstado = est;
    }
  });

  print("Estado $mejorEstado con ${mejorPorc.toStringAsFixed(1)}%");
}
