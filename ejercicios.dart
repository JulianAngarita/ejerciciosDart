//Clase abstracta
abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

class Cat extends Mammal with WalkMixin {}

class Dolphin extends Mammal with SwinMixin {}

class Bat extends Mammal with WalkMixin, FlyMixin {}

mixin SwinMixin {
  void swin(String text) => print("swin $text");
}

mixin WalkMixin {
  void walk(String text) => print("walk $text");
  void velocity(String text) => print('velocity $text');
}

mixin FlyMixin {
  void fly(String text) => print("fly $text");
}

void main() {
  Bat newBat = new Bat();
  newBat.fly('Muercilaguico');

  Cat newCat = new Cat();
  newCat.walk('Miguel');
  newCat.velocity('Slow');

  void iterarLista() {
    var listaFrutas = ['manzana', 'pera', 'banano', 'tomate'];
    for (int i = 0; i < listaFrutas.length; i++) {
      print('La fruta desde un for es ${listaFrutas[i]}');
    }
    // listaFrutas.forEach((String fruta)) {
    //   print('La fruta es $fruta');
    // };
  }

  void ternarias(bool valor) {
    bool esVerdad = (valor) ? true : false;
    print(esVerdad);
  }

  void loops() {
    int count = 1;
    bool loppWhile = true;
    while (loppWhile) {
      print("dentro del while $count");
      count++;
      if (count == 4) {
        loppWhile = false;
      }
    }

    while (count <= 10) {
      print("dentro del while con sin flag $count");
      count++;
      if (count == 4) {
        break;
      }
    }

    print("afuera del while ");

    int n = 10;
    do {
      print(n);
      n--;
    } while (n > 0);

    print("salio");
  }

  void numerosFactoriales(int num) {
    int factorial = 1;
    while (num >= 1) {
      factorial = factorial * num;
      num--;
    }
    print(factorial);
  }

  void manejadorOpciones(String opcion) {
    switch (opcion) {
      case "A":
        {
          print("Excellent");
        }
        break;
      case "B":
        {
          print("good");
        }
        break;

      case "C":
        {
          print("Fair");
        }
        break;

      case "D":
        {
          print("Poor");
        }
        break;

      default:
        {
          print("invalid choice");
        }
        break;
    }
  }

  void manejadorDeFecha() {
    String compareToDateNowasString(String date) {
      DateTime currentTime = DateTime.now();
      DateTime otherDate = DateTime.parse(date);
      int result = currentTime.compareTo(otherDate);
      return ((result <= 0) ? 'ahora o en el futuro' : 'del pasado');
    }

// String compareToDateNowasStringTwo( String date ){
//   int result =   DateTime.now().compareTo( DateTime.parse( date) );
//   return ( ( result >= 0 ) ? 'ahora o en el futuro': ' del pasado' );
// }

// int compareToDateNow( String date ){
//   DateTime currentTime =  DateTime.now();
//   DateTime otherDate = DateTime.parse( date );
//   return currentTime.compareTo( otherDate );
// }

    String fecha1 = '2020-11-20';
    String fecha2 = '2022-09-01';

    print('$fecha2 es: ' + compareToDateNowasString(fecha2));

    print('$fecha1 es: ' + compareToDateNowasString(fecha1));
  }

  // loops();
  // ternarias(false);
  // iterarLista();
  // numerosFactoriales(5);
  // manejadorOpciones('');
  manejadorDeFecha();
}
