void main() {
  double hectareas = 200;  
  double superficie = hectareas * 10000;
  double porcPino, porcOyamel, porcCedro;

  if (superficie > 1000000) {
    porcPino = 0.70;
    porcOyamel = 0.20;
    porcCedro = 0.10;
  } else {
    porcPino = 0.50;
    porcOyamel = 0.30;
    porcCedro = 0.20;
  }

  double areaPino = superficie * porcPino;
  double areaOyamel = superficie * porcOyamel;
  double areaCedro = superficie * porcCedro;
  double densPino = 8 / 10;
  double densOyamel = 15 / 15;
  double densCedro = 10 / 18;
  int numPinos = (areaPino * densPino).toInt();
  int numOyameles = (areaOyamel * densOyamel).toInt();
  int numCedros = (areaCedro * densCedro).toInt();

  print("Superficie total: $superficie m²\n");
  print("Árboles a sembrar:");
  print("Pinos: $numPinos");
  print("Oyameles: $numOyameles");
  print("Cedros: $numCedros");
}
