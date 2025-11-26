void main() {
  double parcial1 = 4.0;
  double parcial2 = 3.5;
  double parcial3 = 4.8;
  double examenFinal = 4.2;
  double trabajoFinal = 4.5;
  double promedioParciales = (parcial1 + parcial2 + parcial3) / 3;
  double porcentajeParciales = promedioParciales * 0.55;
  double porcentajeExamen = examenFinal * 0.30; 
  double porcentajeTrabajo = trabajoFinal * 0.15;
  double calificacionFinal = porcentajeParciales + porcentajeExamen + porcentajeTrabajo;

  print("Promedio de parciales: $promedioParciales");
  print("Suma de parciales (55%): $porcentajeParciales");
  print("Suma del Examen Final (30%): $porcentajeExamen");
  print("Suma de trabajo final (15%): $porcentajeTrabajo");
  print("Calificacion Final de la Materia: $calificacionFinal");
  }