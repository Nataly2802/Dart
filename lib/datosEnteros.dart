void main() {
  int P = 5;
  int Q = 4;
  int expresion = (P * P * P) + (Q * Q * Q * Q) - 2 * (P * P);

  if (expresion > 680) {
    print("La expresión es mayor que 680.");
    print("P = $P");
    print("Q = $Q");
    print("Resultado de la expresión: $expresion");
  } else {
    print("La expresión NO supera 680.");
    print("Resultado obtenido: $expresion");
  }
}
