void main() {
  double montoCompra = 600000;
  double inversionEmpresa = 0;
  double creditoFabricante = 0;
  double prestamoBanco = 0;
  double intereses = 0;

  if (montoCompra > 500000) {
    inversionEmpresa = montoCompra * 0.55;
    prestamoBanco = montoCompra * 0.30;
    creditoFabricante = montoCompra * 0.15;
  } else {
    inversionEmpresa = montoCompra * 0.70;
    creditoFabricante = montoCompra * 0.30;
    prestamoBanco = 0;
  }
  intereses = creditoFabricante * 0.20;

  print("Monto total de la compra: $montoCompra");
  print("Inversión de la empresa: $inversionEmpresa");
  print("Cantidad a crédito con el fabricante: $creditoFabricante");
  print("Intereses a pagar al fabricante: $intereses");
  print("Préstamo del banco: $prestamoBanco");
}
