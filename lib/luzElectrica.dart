void main() {
  double lecturaAnterior = 1200;
  double lecturaActual = 1350;
  double costoKilovatio = 500;

  double consumo = lecturaActual - lecturaAnterior;

  double total = consumo * costoKilovatio;

  print("El consumo del mes es: $consumo Kwh");
  print("Monto total a pagar: $total pesos");
}