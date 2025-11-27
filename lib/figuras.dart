void main() {
  double valor1 = 10;
  double valor2 = 5;
  double comparar = 25;

  double areaTriangulo = (valor1 * valor2) / 2;
  double areaCirculo = valor2 * (valor1 * valor1); 
  double areaRectangulo = valor1 * valor2;

  print("Analizando figuras...\n");

  if (areaTriangulo == comparar) {
    print("Coincide con un TRIÁNGULO. Área = $areaTriangulo");
  } else if (areaCirculo == comparar) {
    print("Coincide con un CÍRCULO. Área = $areaCirculo");
  } else if (areaRectangulo == comparar) {
    print("Coincide con un RECTÁNGULO. Área = $areaRectangulo");
  } else {
    print("Ninguna figura coincide con el valor dado.");
  }
}
