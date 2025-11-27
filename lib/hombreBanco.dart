void main() {
  double capital = 50000;
  double tasa = 10;

  double interes = capital * tasa / 100;

  print("Intereses generados: $interes");

  if (interes > 7000) {
    double total = capital + interes;
    print("Como los intereses superan los \$7000, se reinvierten.");
    print("Monto total en la cuenta: $total");
  } else {
    print("Los intereses no superan los \$7000, No se reinvierten.");
  }
}