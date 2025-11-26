void main() {
  double pesetasPorChelin = 956.871 / 100;
  double pesetasPorDracma = 88.607 / 100;
  double pesetasPorFrancoFrances = 20.110;
  double pesetasPorDolar = 122.499;
  double pesetasPorLira = 9.289 / 100;
  double chelines = 150;
  double dracmas = 200;
  double pesetas = 5000;
  double resultadoPesetasDesdeChelines = chelines * pesetasPorChelin;
  double pesetasDesdeDracmas = dracmas * pesetasPorDracma;
  double francosFranceses = pesetasDesdeDracmas / pesetasPorFrancoFrances;
  double dolares = pesetas / pesetasPorDolar;
  double liras = pesetas / pesetasPorLira;

  print("1) $chelines chelines = $resultadoPesetasDesdeChelines pesetas");
  print("2) $dracmas dracmas = $francosFranceses francos franceces");
  print("3) $pesetas pesetas = $dolares dolares");
  print("4) $pesetas pesetas = $liras liras italianas");
}