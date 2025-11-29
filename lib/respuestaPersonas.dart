void main() {
  List<List<int>> respuestas = List.generate(
    100,
    (_) => [
      (List.of([0, 1])..shuffle()).first,
      (List.of([0, 1])..shuffle()).first,
      (List.of([0, 1])..shuffle()).first,
    ],
  );

  int todasCorrectas = 0;
  int primeraYsegunda = 0;
  int primeraYtercera = 0;
  int segundaYtercera = 0;
  int primeraAlMenos = 0;
  int segundaAlMenos = 0;
  int terceraAlMenos = 0;
  int ningunaCorrecta = 0;

  for (var persona in respuestas) {
    int p1 = persona[0];
    int p2 = persona[1];
    int p3 = persona[2];
    if (p1 == 1 && p2 == 1 && p3 == 1) {
      todasCorrectas++;
    }
    if (p1 == 1 && p2 == 1 && p3 == 0) {
      primeraYsegunda++;
    }
    if (p1 == 1 && p2 == 0 && p3 == 1) {
      primeraYtercera++;
    }
    if (p1 == 0 && p2 == 1 && p3 == 1) {
      segundaYtercera++;
    }
    if (p1 == 1) {
      primeraAlMenos++;
    }
    if (p2 == 1) {
      segundaAlMenos++;
    }
    if (p3 == 1) {
      terceraAlMenos++;
    }
    if (p1 == 0 && p2 == 0 && p3 == 0) {
      ningunaCorrecta++;
    }
  }

  print("Resultados del análisis de las 100 personas:\n");
  print("a) Tres correctas: $todasCorrectas");
  print("b) Solo 1ra y 2da: $primeraYsegunda");
  print("c) Solo 1ra y 3ra: $primeraYtercera");
  print("d) Solo 2da y 3ra: $segundaYtercera");
  print("e) Al menos la 1ra: $primeraAlMenos");
  print("f) Al menos la 2da: $segundaAlMenos");
  print("g) Al menos la 3ra: $terceraAlMenos");
  print("h) Ninguna correcta: $ningunaCorrecta");
}
