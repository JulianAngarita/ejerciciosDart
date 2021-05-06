
class Angulo {
  List<int> angulos = [];

  Angulo(this.angulos);

  void imprimir() => print(angulos);

  void sumarAngulos() {
    int suma = 0;
      angulos.forEach((i) {
        suma = suma+i;
      });
    print(suma);
  }

  void restarAngulos(int angulo1, int angulo2) {
    int resta = angulo1 - angulo2;
    print(resta);
  }
}


void main(){

  Angulo nuevoAngulo = new Angulo([90, 60, 30]);

  nuevoAngulo.sumarAngulos();

  nuevoAngulo.restarAngulos(180, 60);

}