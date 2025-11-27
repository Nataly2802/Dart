void main() {
  double galonesSurtidos = 10;
  double litrosPorGalon = 3.785;
  double  precioPorLitro = 100;

  double litros = galonesSurtidos * litrosPorGalon;
  double total = litros * precioPorLitro;

  print("Litros surtidos: $litros");
  print("Total a Pagar: $total Bolivares");
}