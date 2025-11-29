void main() {
  void generarTabla(int inicio, int fin, int paso) {
    print("Fahrenheit\tCelsius\t\tKelvin\t\tRankine");
    print("=================================================");

    for (int F = inicio; F <= fin; F += paso) {
      double C = 5 * (F - 32) / 9;
      double K = C + 273.15;
      double R = F + 459.67;

      print("$F\t\t${C.toStringAsFixed(2)}\t\t${K.toStringAsFixed(2)}\t\t${R.toStringAsFixed(2)}");
    }
    print("\n");
  }
  generarTabla(28, 54, 1);
  generarTabla(450, 950, 50);
  generarTabla(-50, 250, 10);
}
