void main(List<String> args) {
  
  const inteiros = [3, 7, 9, 10, 50, 12];
  const doubles = [10.5, 2.3, 9.04, 8.42];

  print(inteiros.reduce(divisao));
  print(doubles.reduce(divisao));
}

T divisao<T extends num>(T valor1, T valor2) {

  if (valor1 is int && valor2 is int) {
    return valor1 ~/ valor2 as T;
  } else {
    return valor1 / valor2 as T;
  }
}