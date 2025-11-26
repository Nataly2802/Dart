void main() {
  int horasTrabajadas = 40;
  
  double precioHora = 10000.0;
  double sueldoBase = horasTrabajadas * precioHora;
  double descuento  = sueldoBase * 0.20;
  double salarioNeto = sueldoBase - descuento;

  print("Sueldo base: $sueldoBase");
  print("Descuento (20%): $descuento");
  print("Salario neto: $salarioNeto");
}