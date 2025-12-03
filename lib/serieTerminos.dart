void main() {
  double suma = 0.0;
  int terminos = 0;

  double termino = 1.0;

  while (suma + termino <= 1.99) {
    suma += termino;
    terminos++;
    termino /= 2;
  }

  print("Número de términos: $terminos");
  print("Suma final: ${suma.toStringAsFixed(10)}");
}
