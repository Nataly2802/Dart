void main() {
  int A = 5;
  int B = 5;
  int C = 9;
  int D = 7;
  int N = A * 1000 + B * 100 + C * 10 + D;
  int CD = C * 10 + D;
  int redondeado;

  if (CD >= 50) {
    redondeado = (A * 1000 + B * 100) + 100;
  } else {
    redondeado = (A * 1000 + B * 100);
  }

  print("Número original: $N");
  print("Número redondeado a la centena más próxima: $redondeado");
}
