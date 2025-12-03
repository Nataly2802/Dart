void main() {
  int dLim = 15, mLim = 3, aLim = 2025;
  double totalEstado = 0;
  double totalAgencia = 0;
  double mayorDeudaAgencia = 0;
  int clienteMayor = 0;
  int clientesConDeuda = 0;

  print("=== ESTADO 1 ===");
  print("=== AGENCIA 101 ===\n");
  print("Cliente 5001 - Juan Pérez");
  double totalC1 = 0;
  int cantC1 = 0;

  cantC1 += pagar(1, 800, 10, 3, 2025, dLim, mLim, aLim, (m) => totalC1 += m);
  cantC1 += pagar(2, 1200, 20, 4, 2025, dLim, mLim, aLim, (m) => totalC1 += m);

  print("Total cliente 5001: $totalC1\n");

  if (totalC1 > 0) {
    clientesConDeuda++;
    totalAgencia += totalC1;
    if (totalC1 > mayorDeudaAgencia) {
      mayorDeudaAgencia = totalC1;
      clienteMayor = 5001;
    }
  }

  print("Cliente 5002 - María Gómez");
  double totalC2 = 0;
  int cantC2 = 0;

  cantC2 += pagar(1, 1500, 1, 3, 2025, dLim, mLim, aLim, (m) => totalC2 += m);
  cantC2 += pagar(2, 2000, 30, 5, 2025, dLim, mLim, aLim, (m) => totalC2 += m);

  print("Total cliente 5002: $totalC2\n");

  if (totalC2 > 0) {
    clientesConDeuda++;
    totalAgencia += totalC2;
    if (totalC2 > mayorDeudaAgencia) {
      mayorDeudaAgencia = totalC2;
      clienteMayor = 5002;
    }
  }
  totalEstado = totalAgencia;
  print("=====================================");
  print("RESUMEN AGENCIA 101");
  print("Clientes con deuda: $clientesConDeuda");
  print("Monto total adeudado: $totalAgencia");
  print("Cliente con mayor deuda: $clienteMayor");
  print("=====================================\n");
  print("=== TOTAL ADEUDADO EN EL ESTADO: $totalEstado ===");
}
int pagar(
  int num,
  double monto,
  int d, int m, int a,
  int dLim, int mLim, int aLim,
  Function(double) acum,
) {
  bool vencido = false;
  if (a < aLim ||
      (a == aLim && m < mLim) ||
      (a == aLim && m == mLim && d <= dLim)) {
    vencido = true;
  }
  if (vencido) {
    print("Pagaré $num: \$${monto} (vencido)");
    acum(monto);
    return 1;
  }
  return 0;
}
