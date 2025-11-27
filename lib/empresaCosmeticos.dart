void main() {
  double ventasDept1 = 400000;
  double ventasDept2 = 300000;
  double ventasDept3 = 500000;
  double salario = 1200000;
  double ventasTotales = ventasDept1 + ventasDept2 + ventasDept3;
  double porc1 = ventasDept1 / ventasTotales;
  double porc2 = ventasDept2 / ventasTotales;
  double porc3 = ventasDept3 / ventasTotales;
  double bono = salario * 0.20;
  double salarioFinalDept1 = (porc1 > 0.33) ? salario + bono : salario;
  double salarioFinalDept2 = (porc2 > 0.33) ? salario + bono : salario;
  double salarioFinalDept3 = (porc3 > 0.33) ? salario + bono : salario;

  print("Ventas totales: $ventasTotales\n");

  print("Departamento 1 recibe: $salarioFinalDept1");
  print("Departamento 2 recibe: $salarioFinalDept2");
  print("Departamento 3 recibe: $salarioFinalDept3");
}
