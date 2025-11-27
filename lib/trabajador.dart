void main() {
  //Datos del trabajador
  String nombre = "Juan Perez";
  int horasNormales = 160;
  double precioHora = 50.0;
  int horasExtras = 10;
  int numeroHijos = 2;

  //Asignaciones
  double actualizacionAcademica = 25000.0;
  double asignacionPorHijo = 17300.0;
  double primaPorHogar = 18000.0;

  //Calculos
  double sueldoBase = horasNormales * precioHora;

  // Pago por hora extra es igual al 125% del vaor de la hora normal
  double valorHoraExtra = precioHora * 1.25;
  double pagoHorasExtras = horasExtras * valorHoraExtra;

  // Asignaciones variables (actualizaciones + por hisjos + prima hogar)
  double asignacionesFijas = actualizacionAcademica + (numeroHijos * asignacionPorHijo) + primaPorHogar;

  //Totales de asignaciones (inclyendo pago por horas extras)
  double asignacionesTotales = pagoHorasExtras + asignacionesFijas;

  // Deducciones sobre el sueldo base: 5% + 2% + 7% = 14%
  double deducciones = sueldoBase * 0.14;

  // Sueldo bruto y sueldo neto 
  double sueldoBruto = sueldoBase + asignacionesTotales;
  double sueldoNeto = sueldoBase - deducciones;

  //Mostrar Resultaods
  print("Trabajador: $nombre\n");

  print("=== Sueldo y pagos ===");
  print("Sueldo base (horas normales): $sueldoBase");
  print("Valor hora normal: $precioHora");
  print("Horas normales: $horasNormales");
  print("Valor hora extra (125%): $valorHoraExtra");
  print("Horas extras: $horasExtras");
  print("Pago por horas extras: $pagoHorasExtras");

  print("\n=== Asignaciones ===");
  print("Actualización académica: $actualizacionAcademica");
  print("Asignación por hijos ($numeroHijos): ${numeroHijos * asignacionPorHijo}");
  print("Prima por hogar: $primaPorHogar");
  print("Total asignaciones fijas: $asignacionesFijas");
  print("Asignaciones totales (incluye horas extras): $asignacionesTotales");

  print("\n=== Deducciones ===");
  print("Deducciones (14% sobre sueldo base): $deducciones");

  print("\n=== Resultados finales ===");
  print("Sueldo bruto: $sueldoBruto");
  print("Sueldo neto: $sueldoNeto");
}