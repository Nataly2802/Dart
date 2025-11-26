void main() {
  double sueldoBase = 1200000.0;
  double venta1 = 300000.0;
  double venta2 = 450000.0;
  double venta3 = 500000.0;

  double comision1 = venta1 * 0.10;
  double comision2 = venta2 * 0.10;
  double comision3 = venta3 * 0.10;

  double totalComisiones = comision3 + comision2 + comision1;

  double sueldoTotal = sueldoBase + totalComisiones;

  print("El Sueldo Base es: $sueldoBase");
  print("Comision por la venta 1: $comision1");
  print("Comision por la venta 2: $comision2");
  print("Comision por la venta 3: $comision3");
  print("Total de comisiones: $totalComisiones");
  print("Sueldo total del mes del trabajador: $sueldoTotal");
}