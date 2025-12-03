void main() {
  int numero = 1;
  int encontrados = 0;

  while (encontrados < 3) {
    int sumaDivisores = 0;

    for (int i = 1; i < numero; i++) {
      if (numero % i == 0) {
        sumaDivisores += i;
      }
    }

    if (sumaDivisores == numero) {
      print("Número perfecto encontrado: $numero");
      encontrados++;
    }

    numero++;
  }
}
