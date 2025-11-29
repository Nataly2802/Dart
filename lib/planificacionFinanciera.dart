void main() {
  double capitalActual = -3000;
  double prestamo = 0;
  double nuevoSaldo = capitalActual;

  if (capitalActual < 0) {
    prestamo = 10000 - capitalActual;
    nuevoSaldo = 10000;
  } else if (capitalActual <= 20000) {
    prestamo = 20000 - capitalActual;
    nuevoSaldo = 20000;
  } else {
    prestamo = 0;
    nuevoSaldo = capitalActual;
  }
  double equipoComputo = 5000;
  double mobiliario = 2000;
  double resto = nuevoSaldo - (equipoComputo + mobiliario);
  double insumos = resto / 2;
  double incentivos = resto / 2;

  print("Capital actual: \$$capitalActual");
  print("Préstamo necesario: \$$prestamo");
  print("Nuevo saldo disponible: \$$nuevoSaldo");
  print("Dinero para insumos: \$$insumos");
  print("Dinero para incentivos al personal: \$$incentivos");
}
