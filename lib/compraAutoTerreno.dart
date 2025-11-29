void main() {
  double costoInicial = 100000;
  double devaluacionAuto = 0.10;
  double incrementoTerreno = 0.12; 
  double valorAuto = costoInicial;

  for (int i = 1; i <= 3; i++) {
    valorAuto -= valorAuto * devaluacionAuto;
  }

  double perdidaAuto = costoInicial - valorAuto;
  double valorTerreno = costoInicial;

  for (int i = 1; i <= 3; i++) {
    valorTerreno += valorTerreno * incrementoTerreno;
  }

  double gananciaTerreno = valorTerreno - costoInicial;
  double mitadIncrementoTerreno = gananciaTerreno / 2;

  print("Pérdida del auto en 3 años: $perdidaAuto");
  print("Ganancia del terreno en 3 años: $gananciaTerreno");
  print("Mitad del incremento del terreno: $mitadIncrementoTerreno");
  if (perdidaAuto <= mitadIncrementoTerreno) {
    print("Conviene comprar el automóvil.");
  } else {
    print("NO conviene comprar el automóvil. Mejor comprar el terreno.");
  }
}
