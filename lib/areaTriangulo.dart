import 'dart:math';

void main() {
  int a = 5;
  int b = 6;
  int c = 7;

  double p = (c + b + a) / 2;
  double area = sqrt(p * (p - a) * (p - b) * (p - c));

  print("El area del Triangulo es: $area");
}