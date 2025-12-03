void main() {
  List<int> actividad =    [1, 3, 2, 1, 3, 2, 4, 2, 3, 5];
  List<int> localizacion = [2, 2, 1, 3, 2, 4, 1, 2, 3, 1];
  List<int> trabajadores = [10, 35, 50, 22, 12, 28, 14, 60, 40, 7];
  int n = actividad.length;
  int contAgricolas = 0;
  int contMineras = 0;
  int contMinerasSur = 0;
  List<int> sumaTrab = List.filled(6, 0);
  List<int> contTrab = List.filled(6, 0);
  List<int> industrialesLoc = List.filled(5, 0); 

  for (int i = 0; i < n; i++) {
    int act = actividad[i];
    int loc = localizacion[i];
    int trab = trabajadores[i];

    if (act == 1) contAgricolas++;

    if (act == 3) {
      contMineras++;
      if (loc == 2) contMinerasSur++;
    }

    sumaTrab[act] += trab;
    contTrab[act]++;

    if (act == 2) industrialesLoc[loc]++;
  }

  double porcentajeAgricolas = (contAgricolas * 100) / n;
  double porcentajeMinerasSur =
      contMineras > 0 ? (contMinerasSur * 100) / contMineras : 0;

  int maxLoc = 1;
  for (int i = 2; i <= 4; i++) {
    if (industrialesLoc[i] > industrialesLoc[maxLoc]) {
      maxLoc = i;
    }
  }

  print("RESULTADOS:");
  print("1. Porcentaje de agrícolas: ${porcentajeAgricolas.toStringAsFixed(2)}%");
  print("2. % de mineras del sur respecto a todas las mineras: "
        "${porcentajeMinerasSur.toStringAsFixed(2)}%");

  print("3. Promedio de trabajadores por actividad:");
  for (int i = 1; i <= 5; i++) {
    if (contTrab[i] > 0) {
      double prom = sumaTrab[i] / contTrab[i];
      print("   Actividad $i: ${prom.toStringAsFixed(2)}");
    } else {
      print("   Actividad $i: 0 (sin empresas)");
    }
  }

  print("4. Localización con más empresas industriales: $maxLoc");
}
