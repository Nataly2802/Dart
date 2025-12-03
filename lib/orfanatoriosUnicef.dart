void main() {
  List<Map<String, dynamic>> ninos = [
    {"sexo": "M", "edad": 0, "orf": "Casa Luz", "estado": "Táchira"},
    {"sexo": "F", "edad": 2, "orf": "Nuevo Hogar", "estado": "Distrito Capital"},
    {"sexo": "M", "edad": 5, "orf": "La Esperanza", "estado": "Distrito Capital"},
    {"sexo": "F", "edad": 8, "orf": "Mi Refugio", "estado": "Táchira"},
    {"sexo": "M", "edad": 1, "orf": "Casa Luz", "estado": "Distrito Capital"},
    {"sexo": "F", "edad": 3, "orf": "Nuevo Hogar", "estado": "Táchira"},
    {"sexo": "M", "edad": 7, "orf": "La Esperanza", "estado": "Táchira"},
  ];

  int total = ninos.length;
  int tac = 0;
  int dc = 0;
  int g1 = 0, g2 = 0, g3 = 0, g4 = 0;
  int ninosM = 0;
  int ninosF = 0;

  for (var n in ninos) {
    String estado = n["estado"];
    String sexo = n["sexo"];
    int edad = n["edad"];

    if (estado == "Táchira") tac++;
    if (estado == "Distrito Capital") dc++;

    if (edad < 1) {
      g1++;
    } else if (edad <= 3) {
      g2++;
    } else if (edad <= 6) {
      g3++;
    } else {
      g4++;
    }

    if (sexo == "M") {
      ninosM++;
    } else {
      ninosF++;
    }
  }
  double porcTac = (tac * 100) / total;
  double porcDc = (dc * 100) / total;
  double porcM = (ninosM * 100) / total;
  double porcF = (ninosF * 100) / total;

  print("===== ESTADÍSTICAS UNICEF =====");
  print("Total de huérfanos procesados: $total\n");
  print("a) Porcentajes por Estado:");
  print("   - Táchira: ${porcTac.toStringAsFixed(2)}%");
  print("   - Distrito Capital: ${porcDc.toStringAsFixed(2)}%\n");
  print("b) Cantidad por grupos de edad:");
  print("   Grupo 1 (<1 año): $g1");
  print("   Grupo 2 (1 a 3 años): $g2");
  print("   Grupo 3 (4 a 6 años): $g3");
  print("   Grupo 4 (>6 años): $g4\n");
  print("c) Cantidad por sexo:");
  print("   Niños (M): $ninosM → ${porcM.toStringAsFixed(2)}%");
  print("   Niñas (F): $ninosF → ${porcF.toStringAsFixed(2)}%");
}
