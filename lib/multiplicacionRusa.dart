void main() {
  int multiplicador = 25;
  int multiplicando = 7;
  int m1 = multiplicador;
  int m2 = multiplicando;
  int suma = 0;

  print("Multiplicación rusa: $multiplicador x $multiplicando\n");
  print("Proceso:");

  while (m1 >= 1) {
    print("$m1\t$m2");

    if (m1 % 2 != 0) {
      suma += m2;
    }
    if (m1 == 1) {
      break;
    }

    m1 = m1 ~/ 2;
    m2 = m2 * 2; 
  }

  print("\nResultado final:");
  print("$multiplicador x $multiplicando = $suma");
}
