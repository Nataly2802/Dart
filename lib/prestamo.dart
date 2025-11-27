void main() {
  double capital = 5000;
  double intereses = 800;
  double tiempo = 4;

  double razon = (intereses * 100) / (capital * tiempo);

  print("El porcentaje anual cobrado es: $razon %");
}