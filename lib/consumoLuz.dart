void main() {
  int lecturaAnterior = 350;
  int lecturaActual = 600;
  double costoAseo = 15000; 
  int consumo = lecturaActual - lecturaAnterior;
  double costoKwh = 0;

  if (consumo >= 0 && consumo <= 100) {
    costoKwh = 2622.00;
  } else if (consumo >= 101 && consumo <= 300) {
    costoKwh = 79.78;
  } else if (consumo >= 301 && consumo <= 500) {
    costoKwh = 89.52;
  } else if (consumo >= 501) {
    costoKwh = 97.95;
  } else {
    print("Error: consumo inválido.");
    return;
  }

  double montoElectricidad = consumo * costoKwh;
  double totalPagar = montoElectricidad + costoAseo;

  print("Consumo: $consumo KWh");
  print("Tarifa utilizada: $costoKwh Bs/KWh");
  print("Monto electricidad: $montoElectricidad Bs");
  print("Servicio de aseo urbano: $costoAseo Bs");
  print("TOTAL A PAGAR: $totalPagar Bs");
}
