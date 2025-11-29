void main() {
  double inversionTotal = 1500000;
  double hipoteca = 800000;

  double aportePersona = 0;
  double aporteSocio = 0;

  if (hipoteca < 1000000) {
    aportePersona = inversionTotal * 0.5;
    aporteSocio = inversionTotal * 0.5;
  } else {
    double restante = inversionTotal - hipoteca;

    if (restante <= 0) {
      aportePersona = inversionTotal;
      aporteSocio = 0;
    } else {
      aportePersona = hipoteca + (restante / 2);
      aporteSocio = restante / 2;
    }
  }
  print("Aporte de la persona: \$$aportePersona");
  print("Aporte del socio:     \$$aporteSocio");
}
