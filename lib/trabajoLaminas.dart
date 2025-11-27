void main() {
  double largo = 4.0;
  double ancho = 1.5;

  double pieza = 0.5;

  double areaLamina = largo * ancho;

  int piezasFabricadas = (areaLamina ~/ pieza);

  double desperdicio = areaLamina - (piezasFabricadas * pieza);

  print("Piezas que se pueden fabricar: $piezasFabricadas");
  print("Desperdicio: $desperdicio metros cuadrados");
}