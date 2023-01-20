import 'dart:math';

void main(List<String> args) {
  print('soma: ${add.calcularValores()}');
  print('subtração: ${subtrair.calcularValores()}');
}

int add(int a, int b) => a + b;
int subtrair(int a, int b) => a - b;

typedef IntFuncao = int Function(int, int);

extension on IntFuncao {

  int calcularValores() {

    final valor1 = Random().nextInt(100);
    final valor2 = Random().nextInt(100);

    print('Valores randomicos -> $valor1, $valor2');

    return call(valor1, valor2);
  }
}