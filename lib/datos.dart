import 'dart:math';

void main() {

  int A = 10;
  int B = 4;
  int C = 2;
  int D = 0;

  dynamic resultado;

  if (D == 0) {
    resultado = pow((A - C), 2);
  } else if (D > 0) {
    resultado = pow((A - B), 3) / D;
  } else {
    resultado = "Error: D no puede ser negativo";
  }

  print("El resultado es: $resultado");
}
