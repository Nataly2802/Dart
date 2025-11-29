void main() {
  int M = 10;
  List<String> nombres = [
    "Ana", "Luis", "Maria", "Jose", "Carmen",
    "Pedro", "Sara", "Juan", "Rosa", "Miguel"
  ];

  List<String> nacionalidad = ["V", "E", "V", "V", "E", "V", "E", "V", "E", "V"];
  List<int> edad = [25, 40, 33, 28, 51, 22, 37, 60, 45, 19];
  List<int> tipo = [1, 2, 3, 1, 3, 2, 1, 2, 3, 1];
  List<int> horas = [20, 30, 40, 25, 50, 15, 33, 28, 42, 36];
  int totalV1 = 0, totalV2 = 0, totalV3 = 0;
  int totalExtranjerosEdadImpar = 0;
  int sumaEdades = 0;
  double totalGeneralSueldos = 0;

  for (int i = 0; i < M; i++) {
    int pagoHora = 0;

    if (tipo[i] == 1) pagoHora = 5000;
    else if (tipo[i] == 2) pagoHora = 10000;
    else if (tipo[i] == 3) pagoHora = 15000;

    int sueldoBasico = pagoHora * horas[i];
    double seguro = 0;
    if (sueldoBasico > 100000) {
      seguro = sueldoBasico * 0.03;
    }

    totalGeneralSueldos += sueldoBasico;

    if (nacionalidad[i] == "V") {
      if (tipo[i] == 1) totalV1++;
      else if (tipo[i] == 2) totalV2++;
      else totalV3++;
    }

        if (nacionalidad[i] == "E" && edad[i] % 2 != 0) {
      totalExtranjerosEdadImpar++;
    }

    sumaEdades += edad[i];

    print("Empleado: ${nombres[i]}");
    print("  Sueldo Básico: $sueldoBasico");
    print("  Seguro: $seguro\n");
  }

  double promedioEdad = sumaEdades / M;

  print("==============================");
  print("Totales Venezolanos por Tipo:");
  print("Tipo 1: $totalV1");
  print("Tipo 2: $totalV2");
  print("Tipo 3: $totalV3");
  print("\nExtranjeros con edad impar: $totalExtranjerosEdadImpar");
  print("Promedio de edad: $promedioEdad");
  print("Total general a pagar en sueldos: $totalGeneralSueldos");
}
