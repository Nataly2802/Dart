void main() {
  List<double> pvp = [0, 10.0, 20.0, 30.0];
  List<int> codSuc = [10, 20, 30];
  List<double> montoEsperado = [5000, 9000, 7000];
  List<String> descSuc = ["Centro", "Occidente", "Oriente"];
  List<List<int>> puntos = [
    [1001, 20, 30, 10],  // pertenece a sucursal 10
    [1002, 15, 10, 5],   // sucursal 10
    [2001, 50, 15, 20],  // sucursal 20
    [2002, 30, 25, 10],  // sucursal 20
    [3001, 10, 8, 6],    // sucursal 30
  ];
  List<double> totalSucursal = [0, 0, 0];
  List<double> mayorComision = [0, 0, 0];
  List<int> codMayorComision = [0, 0, 0];

  for (var pv in puntos) {
    int codigoPV = pv[0];
    int u1 = pv[1], u2 = pv[2], u3 = pv[3];
    double venta =
        u1 * pvp[1] + u2 * pvp[2] + u3 * pvp[3];
    double comision = venta * 0.10;
    int menorProd = 1;
    int menorU = u1;

    if (u2 < menorU) {
      menorU = u2;
      menorProd = 2;
    }
    if (u3 < menorU) {
      menorU = u3;
      menorProd = 3;
    }

    int codSucPV = codigoPV ~/ 100;
    int idx = codSuc.indexOf(codSucPV);

    totalSucursal[idx] += venta;

    if (comision > mayorComision[idx]) {
      mayorComision[idx] = comision;
      codMayorComision[idx] = codigoPV;
    }
    print("Punto de Venta $codigoPV");
    print("  Unidades vendidas: P1=$u1, P2=$u2, P3=$u3");
    print("  Monto neto: $venta");
    print("  Comisión pagada: $comision");
    print("  Producto menos vendido: $menorProd\n");
  }

  int sucursalesCumplidas = 0;

  for (int i = 0; i < 3; i++) {
    double porcentaje = (totalSucursal[i] / montoEsperado[i]) * 100;

    if (totalSucursal[i] >= montoEsperado[i]) {
      sucursalesCumplidas++;
    }

    print("Sucursal ${codSuc[i]} - ${descSuc[i]}");
    print("  Total vendido: ${totalSucursal[i]}");
    print("  % alcanzado: ${porcentaje.toStringAsFixed(2)}%");
    print("  Punto de venta con mayor comisión:");
    print(
        "    Código: ${codMayorComision[i]}, Comisión: ${mayorComision[i]}\n");
  }
  double porcCumplidas = (sucursalesCumplidas / 3) * 100;

  print("Porcentaje de sucursales que alcanzaron la meta: "
      "${porcCumplidas.toStringAsFixed(2)}%");
}
