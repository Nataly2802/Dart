void main() {
  int cantidadPares = 4;
  int encontrados = 0;
  int numero = 1;

  while (encontrados < cantidadPares) {
    int sumaA = sumaDivisores(numero);
    int sumaB = sumaDivisores(sumaA);

    if (sumaB == numero && numero != sumaA && numero < sumaA) {
      print("Par de números amigos: $numero y $sumaA");
      encontrados++;
    }

    numero++;
  }
}
int sumaDivisores(int n) {
  int suma = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) {
      suma += i;
    }
  }
  return suma;
}
