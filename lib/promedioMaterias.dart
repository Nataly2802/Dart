void main() {
  double examenMat = 85;
  double tareaMat1 = 90;
  double tareaMat2 = 80;
  double tareaMat3 = 95;

  double examenFis = 78;
  double tareaFis1 = 88;
  double tareaFis2 = 92;

  double examenQui = 90;
  double tareaQui1 = 85;
  double tareaQui2 = 80;
  double tareaQui3 = 88;

  // --- Matemática ---
  double promTareasMat = (tareaMat1 + tareaMat2 + tareaMat3) / 3;
  double promedioMat = (examenMat * 0.90) + (promTareasMat * 0.10);

  // --- Física ---
  double promTareasFis = (tareaFis1 + tareaFis2) / 2;
  double promedioFis = (examenFis * 0.80) + (promTareasFis * 0.20);

  // --- Química ---
  double promTareasQui = (tareaQui1 + tareaQui2 + tareaQui3) / 3;
  double promedioQui = (examenQui * 0.85) + (promTareasQui * 0.15);

  // Promedio general de las tres materias
  double promedioGeneral = (promedioMat + promedioFis + promedioQui) / 3;

  print("Promedio de Matemática: $promedioMat");
  print("Promedio de Física: $promedioFis");
  print("Promedio de Química: $promedioQui");

  print("\nPromedio general de las tres materias: $promedioGeneral");
}
