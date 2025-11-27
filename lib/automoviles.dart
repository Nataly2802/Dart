void main() {
  int distanciaRecorrida = 1200;

  int pago = 0;

  if (distanciaRecorrida <= 300) {
    pago = 5000;

  } else if (distanciaRecorrida > 300 && distanciaRecorrida <= 1000) {
    int kmExtras = distanciaRecorrida - 300;
    pago = 5000 + kmExtras * 200;

  } else {
    int kmEntre300y1000 = 1000 - 300;
    int kmMayores1000 = distanciaRecorrida - 1000;

    pago = 5000 +
        (kmEntre300y1000 * 200) +
        (kmMayores1000 * 150); 
  }

  print("Distancia recorrida: $distanciaRecorrida km");
  print("Total a pagar: $pago Bolívares");
}
