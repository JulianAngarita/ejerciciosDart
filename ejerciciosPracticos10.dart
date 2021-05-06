class Navio {
  bool velero;
  String matricula;
  int esloraMetros;
  String aniosFabricacion;
  String caballosVapor;
  String numeroMastiles;

  Navio(
    this.velero,
    this.matricula,
    this.esloraMetros,
    this.aniosFabricacion,
    this.caballosVapor,
    this.numeroMastiles
  );
}

class Cliente {
  String dni;
  String nombre;
  int numeroDias;

  Cliente(
    this.dni,
    this.nombre,
    this.numeroDias
  );
}

class Alquiler extends Cliente {
  Alquiler(String dni, String nombre, int numeroDias)
      : super(dni, nombre, numeroDias);

  void calcularAlquiler(int esloraMetros) {
    int valorFijo = 1200;
    String valorAlquiler = (esloraMetros * numeroDias * valorFijo).toString();
    String mensaje = 'Para el/la señor@ el valor del alquiler es de $valorAlquiler, durante $numeroDias dias';
    print(mensaje);
  }
}

void main() {
  Navio barco = new Navio(false, 'JKL890', 10, '20', '500', '0');
  Alquiler nuevoAlquiler = new Alquiler('10093290', 'Juan Garcia', 30);

  int esloraMetros = barco.esloraMetros;
  nuevoAlquiler.calcularAlquiler(esloraMetros);
}
