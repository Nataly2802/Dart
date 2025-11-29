void main() {
  List<List<int>> alumnos = [
    [12, 15, 10],
    [8,  0,  14],
    [16, 9,  0],
    [10, 11, 12],
    [0,  18, 19],
    [14, 7,  5],
    [9,  10, 0],
  ];

  int totalAlumnos = alumnos.length;
  int menorProgramacion = 999;
  int noPresentaronIngles = 0;
  int siPresentaronIngles = 0;
  int aprobaronTodas = 0;
  int sumaProgramacion = 0;
  int presentaronMatematica = 0;
  int reprobaronMatematica = 0;

  for (var notas in alumnos) {
    int mat = notas[0];
    int prog = notas[1];
    int ing = notas[2];

    if (prog < menorProgramacion) {
      menorProgramacion = prog;
    }

    if (ing == 0) {
      noPresentaronIngles++;
    } else {
      siPresentaronIngles++;
    }

    bool apruebaMat = mat >= 10;
    bool apruebaProg = prog >= 10;
    bool apruebaIng = ing >= 10;

    if (apruebaMat && apruebaProg && apruebaIng) {
      aprobaronTodas++;
    }

    sumaProgramacion += prog;

    if (mat > 0) {
      presentaronMatematica++;
      if (mat < 10) {
        reprobaronMatematica++;
      }
    }
  }

  double porcentajeNoPresentaronIngles =
      siPresentaronIngles == 0 ? 0 : (noPresentaronIngles * 100 / siPresentaronIngles);

  double promedioProgramacion = sumaProgramacion / totalAlumnos;

  double porcentajeReprobaronMat =
      presentaronMatematica == 0 ? 0 : (reprobaronMatematica * 100 / presentaronMatematica);

  print("a) Nota menor de Programación: $menorProgramacion");
  print("b) % que no presentaron Inglés respecto a los que sí: "
      "$porcentajeNoPresentaronIngles%");
  print("c) Número de alumnos que aprobaron todas las materias: $aprobaronTodas");
  print("d) Promedio general en Programación: $promedioProgramacion");
  print("e) % que reprobaron Matemática respecto al total que la presentaron: "
      "$porcentajeReprobaronMat%");
}
