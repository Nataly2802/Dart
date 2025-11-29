void main() {
  double edad = 20;
  String sexo = "F";
  double hemoglobina = 11.8;

  double min = 0, max = 0;
  if (edad <= 0.083) {
    min = 13;
    max = 26;
  } else if (edad <= 0.5) {
    min = 10;
    max = 18;
  } else if (edad <= 1) {
    min = 11;
    max = 15;
  } else if (edad <= 5) {
    min = 11.5;
    max = 15;
  } else if (edad <= 10) {
    min = 12.6;
    max = 15.5;
  } else if (edad <= 15) {
    min = 13;
    max = 15.5;
  } else {

    if (sexo == "F") {
      min = 12;
      max = 16;
    } else if (sexo == "M") {
      min = 14;
      max = 18;
    }
  }
  bool tieneAnemia = hemoglobina < min;

  print("Edad: $edad años");
  print("Sexo: $sexo");
  print("Hemoglobina: $hemoglobina g%");
  print("Rango normal: $min - $max g%");

  if (tieneAnemia) {
    print("Resultado: POSITIVO → La persona TIENE ANEMIA");
  } else {
    print("Resultado: NEGATIVO → La persona NO tiene anemia");
  }
}
