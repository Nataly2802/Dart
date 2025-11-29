void main() {
  double N = 50;
  double X = 0.1;
  double RN = 0.0;

  if (N > 0) {
    while (true) {
      RN = (X + N / X) / 2;
      if ((X - RN).abs() < 0.000001) {
        break;
      }

      X = RN;
    }

    print("Número: $N");
    print("Raíz cuadrada aproximada: $RN");
  } else {
    print("El número debe ser positivo.");
  }
}
