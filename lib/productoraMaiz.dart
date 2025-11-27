void main() {
  int M = 452;
  int N = 197;
  double B1 = 132;
  double B2 = 180;
  double B3 = 7.50;
  double B4 = 14.50;

  int bultosHarina = M ~/ 24;
  int harinaSuelta = M % 24;

  int cajasAceite = N ~/ 15;
  int aceiteSuelto = N % 15;

  double ingresoHarinaBultos = bultosHarina * B1;
  double ingresoHarinaSuelta = harinaSuelta * B3;

  double ingresoCajasAceite = cajasAceite * B2;
  double ingresoAceiteSuelto = aceiteSuelto * B4;

  double ingresoTotal = ingresoHarinaBultos + ingresoHarinaSuelta + ingresoCajasAceite + ingresoAceiteSuelto;

  print("Ingreso total por tonelada: Bs $ingresoTotal");
}
