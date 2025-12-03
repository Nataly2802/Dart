void main() {
  List<List<int>> datos = [
    [25, 15],
    [30, 18],
    [12, 20],
    [32, 16],
    [28, 14],
    [0, 0],
  ];

  int dias = 0;
  int errores = 0;
  int sumaMax = 0;
  int sumaMin = 0;

  for (var par in datos) {
    int max = par[0];
    int min = par[1];

    if (max == 0 && min == 0) {
      break;
    }

    dias++;

    if (max < 14 || max > 30 || min < 14 || min > 30) {
      errores++;
    } else {
      sumaMax += max;
      sumaMin += min;
    }
  }

  int diasValidos = dias - errores;
  double mediaMax = diasValidos > 0 ? sumaMax / diasValidos : 0;
  double mediaMin = diasValidos > 0 ? sumaMin / diasValidos : 0;
  double porcentajeErrores = dias > 0 ? (errores * 100) / dias : 0;

  print("Número de días procesados: $dias");
  print("Media de temperaturas máximas: ${mediaMax.toStringAsFixed(2)}°C");
  print("Media de temperaturas mínimas: ${mediaMin.toStringAsFixed(2)}°C");
  print("Número de errores ingresados: $errores");
  print("Porcentaje de errores: ${porcentajeErrores.toStringAsFixed(2)}%");
}
