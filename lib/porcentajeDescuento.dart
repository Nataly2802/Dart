void main() {
  double pvp = 100.0;
  double precioFinal = 80.0;
  double descuento = ((pvp - precioFinal) / pvp) * 100;

  print("El descuento aplicado es: $descuento %");
}