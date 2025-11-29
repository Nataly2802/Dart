void main() {
  double temp = 75;
  String deporte;

  if (temp > 85) {
    deporte = "Natación";
  } else if (temp > 70 && temp <= 85) {
    deporte = "Tenis";
  } else if (temp > 32 && temp <= 70) {
    deporte = "Golf";
  } else if (temp > 10 && temp <= 32) {
    deporte = "Esquí";
  } else {
    deporte = "Marcha";
  }

  print("Temperatura: $temp°F");
  print("Deporte recomendado: $deporte");
}
