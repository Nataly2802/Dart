void main() {
  double deudaTotal = 12775;
  double deudaPendiente = deudaTotal;
  double pago = 100;
  double incremento = 125;
  int numeroPagos = 0;

  print("PAGO\tMONTO\tDEUDA PENDIENTE");

  while (deudaPendiente > 0) {
    numeroPagos++;
    double pagoReal = pago;
    if (pagoReal > deudaPendiente) {
      pagoReal = deudaPendiente;
    }

    deudaPendiente -= pagoReal;
    print("$numeroPagos\t$pagoReal\t$deudaPendiente");
    pago += incremento;
  }

  double ultimoPago = pago - incremento;

  print("\nNúmero total de pagos: $numeroPagos");
  print("Monto del último pago: $ultimoPago");
}
