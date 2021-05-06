class Racional {
  dynamic numero; 
  int constante = 5;
  Racional(this.numero);

  void suma(){
    var resultado = numero + constante;
    if(resultado.runtimeType == double){
      print('$numero es un numero racional');
    } else {
      print('$numero es un numero entero');
    }
  }
  void resta(){
    var resultado = numero - constante;
    if(resultado.runtimeType == double){
      print('$numero es un numero racional');
    } else {
      print('$numero es un numero entero');
    }
  }
  void opuesto(){
    if((numero*-1).runtimeType == double) {
      print('$numero es un numero racional');
    } else {
      print('$numero es un numero entero');
    }
  }

  void inverso() {
    var resultado = numero*(1/numero);
    if(resultado.runtimeType == double && resultado != 1.0){
      print('$numero es un numero racional');
    } else {
      print('$numero es un numero entero');
    }
  }
}

void main() {
  Racional esNumeroRacional = new Racional(7);
  esNumeroRacional.suma();
  esNumeroRacional.resta();
  esNumeroRacional.opuesto();
  esNumeroRacional.inverso();
}
