void main() {
  List<Map<String, dynamic>> facturas = [
    {
      "num": 101,
      "cliente": "Ana Pérez",
      "monto": 50000.0,
      "dias": 10
    },
    {
      "num": 102,
      "cliente": "Luis Gómez",
      "monto": 80000.0,
      "dias": 35
    },
    {
      "num": 103,
      "cliente": "Carlos Rivas",
      "monto": 60000.0,
      "dias": 65
    }
  ];

  print("PROCESAMIENTO DE FACTURAS\n");

  for (var f in facturas) {
    int num = f["num"];
    String cliente = f["cliente"];
    double monto = f["monto"];
    int dias = f["dias"];

    double interes = 0;
    double descuento = 0;

    if (dias >= 60) {
      interes = monto * 0.08;
    } else if (dias >= 31 && dias <= 59) {
      interes = monto * 0.06;
    } else if (dias < 15) {
      descuento = monto * 0.02;
    }

    double montoFinal = monto + interes - descuento;

    print("Factura Nº: $num");
    print("Cliente: $cliente");
    print("Monto original: $monto Bs");
    print("Días transcurridos: $dias");
    print("Interés por mora: $interes Bs");
    print("Descuento por pronto pago: $descuento Bs");
    print("Monto final a pagar: $montoFinal Bs");
    print("-----------------------------------------");
  }
}
