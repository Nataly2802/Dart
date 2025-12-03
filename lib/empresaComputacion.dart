void main() {
  List<Map<String, dynamic>> vendedores = [
    // vendedor(5d), canal(4d), ciudad(3d), estado(2d), unidades, monto, nombreCiudad, nombreEstado, esperado
    {"vend": 11001, "canal": 1001, "ciudad": 301, "estado": 01, "u": 50, "m": 5000.0, "ciuNom": "Maracay", "estNom": "Aragua", "esp": 120},
    {"vend": 12002, "canal": 1001, "ciudad": 301, "estado": 01, "u": 80, "m": 8500.0, "ciuNom": "Maracay", "estNom": "Aragua", "esp": 120},
    {"vend": 11003, "canal": 2001, "ciudad": 402, "estado": 02, "u": 40, "m": 3000.0, "ciuNom": "Barquisimeto", "estNom": "Lara", "esp": 70},
    {"vend": 12004, "canal": 2001, "ciudad": 402, "estado": 02, "u": 120, "m": 15000.0, "ciuNom": "Barquisimeto", "estNom": "Lara", "esp": 70},
  ];
  Map<int, Map<String, dynamic>> ciudad = {};
  Map<int, Map<String, dynamic>> estado = {};
  for (var v in vendedores) {
    int ciu = v["ciudad"];
    int est = v["estado"];
    int vend = v["vend"];
    int canal = v["canal"];
    int u = v["u"];
    double m = v["m"];
    int tipo = vend ~/ 1000 == 11 ? 11 : 12; 
    double com = tipo == 11 ? m * 0.10 : m * 0.15;
    double neto = m - com;

    ciudad.putIfAbsent(ciu, () => {
          "est": est,
          "nombre": v["ciuNom"],
          "esp": v["esp"],
          "uTot": 0,
          "mBruto": 0.0,
          "comTienda": 0.0,
          "comCalle": 0.0,
          "mayorNeto": {"canal": canal, "neto": 0.0},
          "menorVend": {"vend": vend, "u": u}
        });

    ciudad[ciu]!["uTot"] += u;
    ciudad[ciu]!["mBruto"] += m;
    if (tipo == 11)
      ciudad[ciu]!["comTienda"] += com;
    else
      ciudad[ciu]!["comCalle"] += com;

    if (neto > ciudad[ciu]!["mayorNeto"]["neto"]) {
      ciudad[ciu]!["mayorNeto"] = {"canal": canal, "neto": neto};
    }

    if (u < ciudad[ciu]!["menorVend"]["u"]) {
      ciudad[ciu]!["menorVend"] = {"vend": vend, "u": u};
    }

    estado.putIfAbsent(est, () => {
          "nombre": v["estNom"],
          "neto": 0.0,
          "ciudades": {},
          "noCumplen": 0,
          "cumplen40a60": 0
        });

    estado[est]!["neto"] += neto;
    estado[est]!["ciudades"][ciu] = v["esp"];
  }

  ciudad.forEach((ciu, data) {
    int est = data["est"];
    int esp = data["esp"];
    int uTot = data["uTot"];

    if (uTot < esp) estado[est]!["noCumplen"]++;

    if (uTot >= esp * 1.40 && uTot <= esp * 1.60) {
      estado[est]!["cumplen40a60"]++;
    }
  });

  print("===== RESULTADOS POR CIUDAD =====");
  ciudad.forEach((c, d) {
    print("\nCiudad $c - ${d["nombre"]}");
    print("Unidades vendidas: ${d["uTot"]}");
    print("Monto bruto: ${d["mBruto"]}");
    print("Comisión tienda: ${d["comTienda"]}");
    print("Comisión calle: ${d["comCalle"]}");
    print("Canal mayor neto: ${d["mayorNeto"]["canal"]}");
    print("Vendedor menor unidades: ${d["menorVend"]["vend"]}");
  });

  print("\n===== RESULTADOS POR ESTADO =====");
  estado.forEach((e, d) {
    int totalCiu = d["ciudades"].length;
    double porcNoCumplen = (d["noCumplen"] / totalCiu) * 100;

    print("\nEstado $e - ${d["nombre"]}");
    print("Monto neto vendido: ${d["neto"]}");
    print("Porcentaje ciudades sin cumplir: ${porcNoCumplen.toStringAsFixed(1)}%");
    print("Ciudades entre 40% y 60% sobre lo esperado: ${d["cumplen40a60"]}");
  });
}
