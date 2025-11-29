import 'dart:math';
void main() {
  int totalCuestionarios = 64;
  int totalPreguntas = 23;
  Random random = Random();
  List<double> promedios = [];

  for (int i = 0; i < totalCuestionarios; i++) {
    int totalPuntos = 0;
    for (int j = 0; j < totalPreguntas; j++) {
      int respuesta = random.nextInt(5) + 1; 
      totalPuntos += respuesta;
    }

    double promedio = totalPuntos / totalPreguntas;
    promedios.add(promedio);

    print("Cuestionario ${i + 1}: Promedio = $promedio");
  }

  print("\n=============================\n");
  double sumaPromedios = 0;
  for (double p in promedios) {
    sumaPromedios += p;
  }
  double mediaGeneral = sumaPromedios / totalCuestionarios;
  print("a) Promedio general: $mediaGeneral");
  double maxPromedio = promedios[0];
  int numMayor = 1;
  double minPromedio = promedios[0];
  int numMenor = 1;

  for (int i = 0; i < promedios.length; i++) {
    if (promedios[i] > maxPromedio) {
      maxPromedio = promedios[i];
      numMayor = i + 1;
    }
    if (promedios[i] < minPromedio) {
      minPromedio = promedios[i];
      numMenor = i + 1;
    }
  }

  print("b) Promedio más alto: $maxPromedio(Cuestionario $numMayor)");
  print("c) Promedio más bajo: $minPromedio (Cuestionario $numMenor)");
  int menores3 = 0;
  int mayores4 = 0;

  for (double p in promedios) {
    if (p < 3) menores3++;
    if (p > 4) mayores4++;
  }

  double porcentajeD = 0;
  if (mayores4 > 0) {
    porcentajeD = (menores3 * 100) / mayores4;
  }

  print("d) % de promedios < 3 respecto a promedios > 4: $porcentajeD %");
  int entre45y5 = 0;

  for (double p in promedios) {
    if (p >= 4.5 && p <= 5) {
      entre45y5++;
    }
  }

  double porcentajeE = (entre45y5 * 100) / totalCuestionarios;
  print("e) % de promedios entre 4.5 y 5: $porcentajeE %");
}
