import 'dart:math';

void main() {
  double A = 2;
  double B = 5;
  double C = 3;
  double D = B * B - 4 * A * C;

  print("Discriminante D = $D");

  if (D == 0) {
    double x = -B / (2 * A);
    print("D = 0 La ecuación tiene una sola solución real.");
    print("x1 = x2 = $x");
  } else if (D > 0) {
    double x1 = (-B + sqrt(D)) / (2 * A);
    double x2 = (-B - sqrt(D)) / (2 * A);
    print("D > 0 Existen dos soluciones reales:");
    print("x1 = $x1");
    print("x2 = $x2");
  } else {
    print("D < 0 La ecuación no tiene solución en los números reales.");
  }
}
