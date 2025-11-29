import 'dart:math';

void main() {
  Random random = Random();
  double sumaNinos = 0, sumaJovenes = 0, sumaAdultos = 0, sumaViejos = 0;
  int contNinos = 0, contJovenes = 0, contAdultos = 0, contViejos = 0;

  for (int i = 0; i < 100; i++) {
    int edad = random.nextInt(90); 
    double peso = 40 + random.nextInt(61).toDouble();
    if (edad <= 12) {
      sumaNinos += peso;
      contNinos++;
    } else if (edad <= 29) {
      sumaJovenes += peso;
      contJovenes++;
    } else if (edad <= 59) {
      sumaAdultos += peso;
      contAdultos++;
    } else {
      sumaViejos += peso;
      contViejos++;
    }
  }
  double promNinos = contNinos > 0 ? sumaNinos / contNinos : 0;
  double promJovenes = contJovenes > 0 ? sumaJovenes / contJovenes : 0;
  double promAdultos = contAdultos > 0 ? sumaAdultos / contAdultos : 0;
  double promViejos = contViejos > 0 ? sumaViejos / contViejos : 0;
  print("Promedio de peso Niños: $promNinos kg");
  print("Promedio de peso Jóvenes: $promJovenes kg");
  print("Promedio de peso Adultos: $promAdultos kg");
  print("Promedio de peso Viejos: $promViejos kg");
}
