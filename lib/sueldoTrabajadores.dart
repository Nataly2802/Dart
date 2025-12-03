void main() {
  List<Map<String, dynamic>> empleados = [
    {
      "nombre": "Ana Pérez",
      "cedula": "10123456",
      "tipo": 1,
      "hijos": 3,
      "asistencia": 29
    },
    {
      "nombre": "Luis Gómez",
      "cedula": "22345678",
      "tipo": 2,
      "hijos": 1,
      "asistencia": 30
    },
    {
      "nombre": "Carlos Ruiz",
      "cedula": "33456789",
      "tipo": 3,
      "hijos": 5,
      "asistencia": 27
    },
  ];
  for (var emp in empleados) {
    double sueldoBasico = 0;

    if (emp["tipo"] == 1) {
      sueldoBasico = 100000;
    } else if (emp["tipo"] == 2) {
      sueldoBasico = 165500;
    } else if (emp["tipo"] == 3) {
      sueldoBasico = 250000;
    }

    int hijos = emp["hijos"];
    if (hijos > 5) hijos = 5;

    double aporteHijos = hijos * (sueldoBasico * 0.10);
    double aporteAsistencia = 0;
    if (emp["asistencia"] > 0.95 * 30) {
      aporteAsistencia = sueldoBasico * 0.05;
    }

    double deduCajaAhorros = sueldoBasico * 0.10;
    double deduSeguro = sueldoBasico * 0.02;
    double sueldoNeto =
        sueldoBasico + aporteHijos + aporteAsistencia - deduCajaAhorros - deduSeguro;

    print("----------------------------------------------");
    print("Nombre: ${emp['nombre']}");
    print("Cédula: ${emp['cedula']}");
    print("Sueldo Básico: $sueldoBasico");
    print("Aporte Caja de Ahorros: $deduCajaAhorros");
    print("Seguro Social (2%): $deduSeguro");
    print("Sueldo Neto: $sueldoNeto");
  }
}
