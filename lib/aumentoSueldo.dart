void main() {
  double sueldo = 1400000;
  double nuevoSueldo;

  if (sueldo < 40000) {
    nuevoSueldo = sueldo + (sueldo * 0.15);
  } else {
    nuevoSueldo = sueldo + (sueldo * 0.12);
  }

  print("El nuevo sueldo del trabajador es: Bs. $nuevoSueldo");
}
