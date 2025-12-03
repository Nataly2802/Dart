void main() {
  List<String> estados = ["Estado A", "Estado B", "Estado C", "Estado D", "Estado E"];
  List<List<int>> poblacion = [
    [12000, 15000, 8000],       // Estado A
    [5000, 7000, 6500, 9000],   // Estado B
    [30000, 25000],             // Estado C
    [11000, 9500, 10300],       // Estado D
    [7000, 7100, 7300]          // Estado E
  ];

  int totalPais = 200000;
  List<int> totalEstados = [];
  for (int i = 0; i < 5; i++) {
    int suma = 0;
    for (int hab in poblacion[i]) {
      suma += hab;
    }
    totalEstados.add(suma);
  }

  int mayor = totalEstados[0];
  int menor = totalEstados[0];
  int posMayor = 0;
  int posMenor = 0;

  for (int i = 1; i < 5; i++) {
    if (totalEstados[i] > mayor) {
      mayor = totalEstados[i];
      posMayor = i;
    }
    if (totalEstados[i] < menor) {
      menor = totalEstados[i];
      posMenor = i;
    }
  }

  int total5Estados = 0;
  for (int t in totalEstados) total5Estados += t;

  double porcentaje = (total5Estados / totalPais) * 100;
  double promedio = total5Estados / 5;
  
  print("Estado con mayor población: ${estados[posMayor]} = $mayor habitantes");
  print("Estado con menor población: ${estados[posMenor]} = $menor habitantes");
  print("Porcentaje respecto al total del país: ${porcentaje.toStringAsFixed(2)}%");
  print("Promedio de habitantes por estado: ${promedio.toStringAsFixed(2)}");
}
