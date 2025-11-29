void main() {
  int cantidad = 168255;

  List<int> billetes = [
    50000, 20000, 10000, 5000,
    2000, 1000, 500, 100,
    50, 20, 10
  ];

  print("Cantidad total: $cantidad Bolívares");
  print("Desglose:");

  for (int valor in billetes) {
    int numeroBilletes = cantidad ~/ valor;
    cantidad = cantidad % valor;

    print("Billetes de $valor: $numeroBilletes");
  }
}
