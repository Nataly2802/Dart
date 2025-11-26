void main() {
  int metros = 25;
  double pulgadasTotales = metros * 39.27;
  int pies = (pulgadasTotales ~/ 12);
  double pulgadasRestantes = pulgadasTotales % 12;

  print("Metros: $metros m");
  print("Equivale a: ");
  print("$pies pies");
  print("$pulgadasRestantes pulgadas");  
}