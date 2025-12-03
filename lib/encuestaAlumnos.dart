void main() {
  List<int> edad =          [18, 22, 25, 20, 19, 30, 24, 17, 21, 33];
  List<int> sexo =          [1, 2, 1, 2, 1, 1, 2, 2, 1, 2];
  List<int> estadoCivil =   [1, 2, 1, 1, 3, 2, 1, 1, 4, 2];
  List<int> especialidad =  [1, 1, 2, 2, 3, 3, 1, 4, 5, 5];
  int n = edad.length;
  int sumaEdadH = 0, sumaEdadM = 0;
  int contH = 0, contM = 0;
  List<int> contEstado = List.filled(5, 0); 
  List<int> contEspe = List.filled(6, 0);   
  int mujeresAdultas = 0; 
  int hombresJovenes = 0; 
  int hombresSolteros = 0;
  int mujeresSolteras = 0;

  for (int i = 0; i < n; i++) {
    int e = edad[i];
    int s = sexo[i];
    int est = estadoCivil[i];
    int esp = especialidad[i];

    if (s == 1) {
      contH++;
      sumaEdadH += e;
      if (est == 1) hombresSolteros++;
      if (e > 17 && e < 21) hombresJovenes++;
    } else {
      contM++;
      sumaEdadM += e;
      if (est == 1) mujeresSolteras++;
      if (e > 21) mujeresAdultas++;
    }

    contEstado[est]++;
    contEspe[esp]++;
  }
  double promM = contM > 0 ? sumaEdadM / contM : 0;
  double promH = contH > 0 ? sumaEdadH / contH : 0;
  List<double> porcentajeEstado = List.filled(5, 0);
  for (int i = 1; i <= 4; i++) {
    porcentajeEstado[i] = (contEstado[i] * 100) / n;
  }

  List<double> porcentajeEspe = List.filled(6, 0);
  for (int i = 1; i <= 5; i++) {
    porcentajeEspe[i] = (contEspe[i] * 100) / n;
  }

  double porcMujeresAdultas = (mujeresAdultas * 100) / n;
  double porcHombresJovenes = (hombresJovenes * 100) / n;

  print("ESTADÍSTICAS DE LA ENCUESTA:");
  print("---------------------------------");
  print("a. Promedio de edad (mujeres): ${promM.toStringAsFixed(2)}");
  print("b. Promedio de edad (hombres): ${promH.toStringAsFixed(2)}");
  print("c. Cantidad de hombres: $contH");
  print("   Cantidad de mujeres: $contM");

  print("\nd. Porcentaje por estado civil:");
  for (int i = 1; i <= 4; i++) {
    print("   Estado $i: ${porcentajeEstado[i].toStringAsFixed(2)}%");
  }

  print("\ne. Cantidad y porcentaje por especialidad:");
  for (int i = 1; i <= 5; i++) {
    print("   Especialidad $i -> ${contEspe[i]} alumnos = ${porcentajeEspe[i].toStringAsFixed(2)}%");
  }

  print("\nf. % de mujeres adultas (>21): ${porcMujeresAdultas.toStringAsFixed(2)}%");
  print("g. % de hombres jóvenes (18-20): ${porcHombresJovenes.toStringAsFixed(2)}%");

  print("\nh. Hombres solteros: $hombresSolteros");
  print("   Mujeres solteras: $mujeresSolteras");
}
