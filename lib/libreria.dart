void main() {
  List<String> apellidos = ["García", "Torres", "Mendoza"];
  List<List<dynamic>> libros = [
    [101, "ciencia ficcion", 220, 0],
    [102, "romance", 150, 0],
    [103, "accion", 300, 0],

    [201, "terror", 180, 1],
    [202, "ciencia ficcion", 240, 1],

    [301, "novela", 210, 2],
    [302, "autoayuda", 90, 2],
    [303, "academico", 400, 2],
  ];
  int totalLibros = libros.length;
  int cantCF = 0;
  int cantCFyRomance = 0;
  List<int> cantLibrosAutor = [0, 0, 0];
  List<int> mayorPagAutor = [0, 0, 0];
  List<int> codMayorPagAutor = [0, 0, 0];

  for (var l in libros) {
    int codigo = l[0];
    String genero = l[1];
    int paginas = l[2];
    int idx = l[3];

    cantLibrosAutor[idx]++;

    if (paginas > mayorPagAutor[idx]) {
      mayorPagAutor[idx] = paginas;
      codMayorPagAutor[idx] = codigo;
    }

    if (genero == "ciencia ficcion") cantCF++;
    if (genero == "ciencia ficcion" || genero == "romance") {
      cantCFyRomance++;
    }
  }

  for (int i = 0; i < apellidos.length; i++) {
    print("Autor: ${apellidos[i]}");
    print("  Código libro con más páginas: ${codMayorPagAutor[i]}");
    print("  Páginas: ${mayorPagAutor[i]}\n");
  }

  double porcCF = (cantCF / totalLibros) * 100;

  print("Porcentaje de libros de ciencia ficción: "
      "${porcCF.toStringAsFixed(2)}%\n");

  print("Cantidad de libros de Ciencia Ficción y Romance: "
      "$cantCFyRomance\n");

  int idxMayor = 0;
  for (int i = 1; i < cantLibrosAutor.length; i++) {
    if (cantLibrosAutor[i] > cantLibrosAutor[idxMayor]) {
      idxMayor = i;
    }
  }

  print("Autor con más libros escritos: ${apellidos[idxMayor]}");
  print("Cantidad de libros escritos: ${cantLibrosAutor[idxMayor]}");
}
