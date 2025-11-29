void main() {
  double capital = 1000;
  double tasa = 0.06;
  int semanas = 4;
  int dias = semanas * 7;

  for (int i = 1; i <= dias; i++) {
    double interesDiario = (tasa * capital) / 365;
    capital += interesDiario;
  }

  print("Capital acumulado después de $semanas semanas: $capital");
}
