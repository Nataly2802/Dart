void main() {
  int g = 2;
  int n = 2;
  int m = 2;
  List datos = [
    [
      [
        [10, 12, 11],
        [15, 14, 16]
      ],
      [
        [12, 10, 11],
        [14, 15, 13]
      ]
    ],
    [
      [
        [18, 17, 19],
        [16, 15, 17]
      ],
      [
        [10, 12, 11],
        [13, 14, 12]
      ]
    ]
  ];

  double promedioGeneral = 0;

  for (int grupo = 0; grupo < g; grupo++) {
    double promGrupo = 0;
    print("\nGRUPO ${grupo + 1}");

    for (int alumno = 0; alumno < n; alumno++) {
      double promAlumno = 0;

      for (int materia = 0; materia < m; materia++) {
        double suma = 0;
        for (int nota = 0; nota < 3; nota++) {
          suma += datos[grupo][alumno][materia][nota];
        }

        promAlumno += (suma / 3);
      }
      promAlumno /= m;
      print("Alumno ${alumno + 1}: Promedio = ${promAlumno.toStringAsFixed(2)}");
      promGrupo += promAlumno;
    }
    promGrupo /= n;
    print("Promedio del grupo: ${promGrupo.toStringAsFixed(2)}");
    promedioGeneral += promGrupo;
  }
  promedioGeneral /= g;
  print("\nPROMEDIO GENERAL DE TODOS LOS GRUPOS: ${promedioGeneral.toStringAsFixed(2)}");
}
