void main() {
  int X = 48000;
  double Y = 6;
  double K = 42000;
  double docenas = X / 12;
  double costoCompra = docenas * Y;
  double ganancia = K - costoCompra;
  double porcentajeGanancia  = (ganancia / costoCompra) * 100;
  
  print("El Porcentaje de ganancias es: $porcentajeGanancia %"); 
}