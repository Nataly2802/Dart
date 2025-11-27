void main() {
  String nombre = "María Torres";
  double montoCompra = 8200;
  double descuento = 0;

  if (montoCompra < 500) {
    descuento = 0;
  } else if (montoCompra >= 500 && montoCompra <= 1000) {
    descuento = montoCompra * 0.05;
  } else if (montoCompra > 1000 && montoCompra <= 7000) {
    descuento = montoCompra * 0.11;
  } else if (montoCompra > 7000 && montoCompra <= 15000) {
    descuento = montoCompra * 0.18;
  } else if (montoCompra > 15000) {
    descuento = montoCompra * 0.25;
  }

  double montoPagar = montoCompra - descuento;

  print("Cliente: $nombre");
  print("Monto de la compra: $montoCompra");
  print("Descuento aplicado: $descuento");
  print("Monto final a pagar: $montoPagar");
}
