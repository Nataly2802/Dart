void main() {
  double a = 2;
  double b = 3;
  double c = 8;
  double d = 1;
  double e = 4;
  double f = 5;

  double den = (a * e) - (b * d);
  double x = ((c * e) - (b * f)) / den;
  double y = ((a * f) - (c * d)) / den;

  print("X = $x");
  print("Y = $y");
}