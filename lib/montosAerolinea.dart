void main() {
  int numVuelos = 2;
  int vuelo1_pasajeros = 2;
  String v1p1_nombre = "Ana";
  String v1p1_codigo = "A01";
  int v1p1_maletas = 2;
  double v1p1_m1_peso = 4.5;
  double v1p1_m2_peso = 2.0;
  String v1p2_nombre = "Luis";
  String v1p2_codigo = "A02";
  int v1p2_maletas = 3;
  double v1p2_m1_peso = 7.0;
  double v1p2_m2_peso = 3.3;
  double v1p2_m3_peso = 1.0;
  int vuelo2_pasajeros = 1;
  String v2p1_nombre = "Maria";
  String v2p1_codigo = "B01";
  int v2p1_maletas = 2;
  double v2p1_m1_peso = 2.0;
  double v2p1_m2_peso = 12.5;
  int totalPasajeros = 0;
  int pasajerosSinPago = 0;

  print("===== VUELO 1 =====");
  double totalMontoVuelo1 = 0;
  double pesoMax1 = -1;
  String nomMax1 = "";
  String codMax1 = "";
  double pesoMin1 = 999999;
  String nomMin1 = "";
  String codMin1 = "";

  totalPasajeros++;

  double pesoTotal = v1p1_m1_peso + v1p1_m2_peso;
  double monto = calcularMonto(pesoTotal);

  if (monto == 0) pasajerosSinPago++;

  totalMontoVuelo1 += monto;

  mostrarPasajero(1, v1p1_codigo, v1p1_nombre, pesoTotal, monto);

  double mayorMaleta = (v1p1_m1_peso > v1p1_m2_peso) ? v1p1_m1_peso : v1p1_m2_peso;
  print("Maleta más pesada: $mayorMaleta\n");

  if (pesoTotal > pesoMax1) {
    pesoMax1 = pesoTotal;
    nomMax1 = v1p1_nombre;
    codMax1 = v1p1_codigo;
  }
  if (pesoTotal < pesoMin1) {
    pesoMin1 = pesoTotal;
    nomMin1 = v1p1_nombre;
    codMin1 = v1p1_codigo;
  }
  totalPasajeros++;
  pesoTotal = v1p2_m1_peso + v1p2_m2_peso + v1p2_m3_peso;
  monto = calcularMonto(pesoTotal);

  if (monto == 0) pasajerosSinPago++;

  totalMontoVuelo1 += monto;

  mostrarPasajero(1, v1p2_codigo, v1p2_nombre, pesoTotal, monto);

  double mayor1 = v1p2_m1_peso;
  if (v1p2_m2_peso > mayor1) mayor1 = v1p2_m2_peso;
  if (v1p2_m3_peso > mayor1) mayor1 = v1p2_m3_peso;

  print("Maleta más pesada: $mayor1\n");

  if (pesoTotal > pesoMax1) {
    pesoMax1 = pesoTotal;
    nomMax1 = v1p2_nombre;
    codMax1 = v1p2_codigo;
  }
  if (pesoTotal < pesoMin1) {
    pesoMin1 = pesoTotal;
    nomMin1 = v1p2_nombre;
    codMin1 = v1p2_codigo;
  }
  print("Pasajero con mayor peso: $nomMax1 ($codMax1) → $pesoMax1 kg");
  print("Pasajero con menor peso: $nomMin1 ($codMin1) → $pesoMin1 kg");
  print("Monto total en vuelo 1: $totalMontoVuelo1\n");
  print("===== VUELO 2 =====");
  double totalMontoVuelo2 = 0;
  double pesoMax2 = -1;
  String nomMax2 = "";
  String codMax2 = "";
  double pesoMin2 = 999999;
  String nomMin2 = "";
  String codMin2 = "";

  totalPasajeros++;

  pesoTotal = v2p1_m1_peso + v2p1_m2_peso;
  monto = calcularMonto(pesoTotal);

  if (monto == 0) pasajerosSinPago++;
  totalMontoVuelo2 += monto;

  mostrarPasajero(2, v2p1_codigo, v2p1_nombre, pesoTotal, monto);

  double mayor2 = (v2p1_m1_peso > v2p1_m2_peso) ? v2p1_m1_peso : v2p1_m2_peso;
  print("Maleta más pesada: $mayor2\n");

  pesoMax2 = pesoTotal;
  nomMax2 = v2p1_nombre;
  codMax2 = v2p1_codigo;

  pesoMin2 = pesoTotal;
  nomMin2 = v2p1_nombre;
  codMin2 = v2p1_codigo;

  print("Pasajero mayor peso: $nomMax2 ($codMax2) → $pesoMax2 kg");
  print("Pasajero menor peso: $nomMin2 ($codMin2) → $pesoMin2 kg");
  print("Monto total vuelo 2: $totalMontoVuelo2\n");

  double porcentajeNoPago = (pasajerosSinPago / totalPasajeros) * 100;
  print("PORCENTAJE DE PASAJEROS SIN PAGO: $porcentajeNoPago%");
}
double calcularMonto(double peso) {
  if (peso >= 1 && peso <= 3) return 0;
  if (peso > 3 && peso <= 6) return peso * 600;
  if (peso > 6 && peso <= 9) return peso * 1200;
  if (peso > 9 && peso <= 12) return peso * 1500;
  if (peso > 12 && peso <= 15) return peso * 2000;
  return peso * 2500;
}
void mostrarPasajero(int vuelo, String codigo, String nombre, double peso, double monto) {
  print("Vuelo $vuelo");
  print("Código Abordo: $codigo");
  print("Nombre: $nombre");
  print("Peso Total: $peso kg");
  print("Monto a pagar: $monto");
}
