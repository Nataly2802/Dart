void main() {
  int limite = 300;
  List<String> nombres = ["Luis", "Ana", "Carlos"];
  List<List<int>> produccion = [
    [40, 50, 55, 45, 60, 50], // Luis
    [60, 60, 65, 55, 70, 65], // Ana
    [30, 25, 28, 20, 35, 40], // Carlos
  ];

  int obreros = nombres.length;
  int totalGeneral = 0;
  int alcanzaron = 0;
  String nombreMayor = "";
  int mayorProduccion = 0;

  print("=== PRODUCCIÓN SEMANAL POR OBRERO ===\n");

  for (int i = 0; i < obreros; i++) {
    int totalSemana = 0;

    for (int d = 0; d < 6; d++) {
      totalSemana += produccion[i][d];
    }

    totalGeneral += totalSemana;

    if (totalSemana >= limite) alcanzaron++;
    if (totalSemana > mayorProduccion) {
      mayorProduccion = totalSemana;
      nombreMayor = nombres[i];
    }

    double porcentaje = (totalSemana / limite) * 100;

    print("Obrero: ${nombres[i]}");
    print("  Total semanal: $totalSemana");
    print("  % del límite: ${porcentaje.toStringAsFixed(2)}%\n");
  }
  
  print("=== RESULTADOS GENERALES ===");
  double porcAlcanzaron = (alcanzaron / obreros) * 100;
  double promedioGeneral = totalGeneral / obreros;
  print("Porcentaje que alcanzaron o superaron el límite: "
      "${porcAlcanzaron.toStringAsFixed(2)}%");
  print("Obrero que más produjo: $nombreMayor con $mayorProduccion bloques");
  print("Promedio de producción semanal de la bloquera: "
      "${promedioGeneral.toStringAsFixed(2)}");
}
