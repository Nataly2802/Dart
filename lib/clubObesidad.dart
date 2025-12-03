void main() {
  List<double> pesoAnterior = [70.0, 82.5, 65.2, 90.0, 73.5];
  List<List<double>> lecturas = [
    [70, 69.8, 70.2, 70.1, 69.9, 70, 70.1, 69.9, 70, 70.2],
    [82.5, 82.6, 82.4, 82.3, 82.7, 82.5, 82.5, 82.6, 82.4, 82.5],
    [65.2, 65.0, 65.1, 65.3, 65.4, 65.2, 65.1, 65.2, 65.3, 65.2],
    [90, 90.5, 90.3, 90.4, 90.2, 90.3, 90.4, 90.5, 90.1, 90.2],
    [73.5, 73.4, 73.3, 73.6, 73.7, 73.5, 73.4, 73.6, 73.3, 73.5]
  ];

  for (int i = 0; i < 5; i++) {
    double suma = 0;
    for (int j = 0; j < 10; j++) {
      suma += lecturas[i][j];
    }

    double promedio = suma / 10;
    double dif = promedio - pesoAnterior[i];

    if (dif > 0) {
      print("Persona ${i + 1}: SUBIÓ ${dif.toStringAsFixed(2)} kg");
    } else {
      print("Persona ${i + 1}: BAJÓ ${dif.abs().toStringAsFixed(2)} kg");
    }
  }
}
