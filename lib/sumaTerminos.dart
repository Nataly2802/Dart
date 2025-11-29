void main() {
  double suma = 0;
  int k = 1;
  int terminos = 0;

  while (true) {
    double termino = (k * k + 1) / k;

    if (suma + termino > 1000) {
      break;
    }

    suma += termino;
    terminos++;
    k++;
  }

  print("Suma final: $suma");
  print("Número de términos necesarios: $terminos");
}
