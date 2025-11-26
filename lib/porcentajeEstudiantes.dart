void main() {
  int hombres = 15;
  int mujeres = 9;
  int total = hombres + mujeres;

  double porcentajeHombres = (hombres / total) * 100;
  double porcentajeMujeres = (mujeres / total) * 100;

  print("Porcentaje de hombres: $porcentajeHombres%");
  print("Porcentaje de mujeres: $porcentajeMujeres%");
}