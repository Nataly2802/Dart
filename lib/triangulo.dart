import 'dart:math';

void main() {
  int A = 5;
  int B = 10;
  int C = 9;

  print("Lados: A=$A, B=$B, C=$C");

  List<int> lados = [A, B, C];
  lados.sort();

  int menor1 = lados[0];
  int menor2 = lados[1];
  int mayor  = lados[2];
  if (menor1 + menor2 > mayor) {
    print("Sí es un triángulo.");

    if (A == B && B == C) {
      print("Tipo: Triángulo equilátero");
    } else if (A == B || A == C || B == C) {
      print("Tipo: Triángulo isósceles");
    } else {
      print("Tipo: Triángulo escaleno");
    }
    double S = (A + B + C) / 2;
    double area = sqrt(S * (S - A) * (S - B) * (S - C));

    print("Área del triángulo: $area");

  } else {
    print("Los valores NO forman un triángulo.");
  }
}
