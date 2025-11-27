void main() {
  double P = 5000;
  double T = 500;
  double precioCredito = 12 * T;
  double recargo = precioCredito - P;
  double porcentajeRecargo = (recargo / P) * 100;

  print("Precio al contado: $P");
  print("Precio a crédito: $precioCredito");
  print("Recargo total: $recargo");
  print("Porcentaje de recargo: $porcentajeRecargo %");
}
