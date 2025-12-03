import 'dart:math';

void main() {

  const double G = 6.67259e-11;
  const double M = 5.97e24;
  const double R_Tierra = 6371000;

  List<Map<String, dynamic>> satelites = [
    {"nombre": "Canada 1", "pais": "Canadá", "masa": 8300.0, "altura": 31200000.0},
    {"nombre": "Alfa 1", "pais": "Chile", "masa": 5500.0, "altura": 36000000.0},
    {"nombre": "Boby 4", "pais": "EE.UU.", "masa": 12000.0, "altura": 33450000.0},
    {"nombre": "Che 3", "pais": "Argentina", "masa": 3350.0, "altura": 34200000.0},
  ];

  List<double> fuerzas = [];
  List<double> masas = [];
  List<double> alturas = [];

  for (var s in satelites) {
    double masa = s["masa"];
    double altura = s["altura"];
    double r = R_Tierra + altura;

    double fuerza = G * masa * M / pow(r, 2);

    fuerzas.add(fuerza);
    masas.add(masa);
    alturas.add(altura);
  }

  double mayorF = fuerzas.reduce(max);
  double menorF = fuerzas.reduce(min);
  double promF = fuerzas.reduce((a, b) => a + b) / fuerzas.length;
  double mayorMasa = masas.reduce(max);
  double promMasa = masas.reduce((a, b) => a + b) / masas.length;
  double menorAlt = alturas.reduce(min);
  double mayorAlt = alturas.reduce(max);

  print("======== RESULTADOS NASA ========");
  print("a) Fuerza máxima:  $mayorF N");
  print("   Fuerza mínima:  $menorF N\n");
  print("b) Fuerza promedio: $promF N\n");
  print("c) Mayor masa de satélite: $mayorMasa kg\n");
  print("d) Masa promedio de satélites: $promMasa kg\n");
  print("e) Menor altura: $menorAlt m");
  print("   Mayor altura: $mayorAlt m");
}
