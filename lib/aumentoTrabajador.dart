void main() {
  int categoria = 2;
  double sueldo = 120000;

  double aumento = 0;

  if (categoria == 1) {
    aumento = sueldo * 0.15;  
  } else if (categoria == 2) {
    aumento = sueldo * 0.10; 
  } else if (categoria == 3) {
    aumento = sueldo * 0.08;  
  } else if (categoria == 4) {
    aumento = sueldo * 0.07; 
  } else {
    print("Categoría no válida");
    return; 
  }

  double nuevoSueldo = sueldo + aumento;

  print("Categoría del trabajador: $categoria");
  print("Nuevo sueldo: $nuevoSueldo");
}
