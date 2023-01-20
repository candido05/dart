void main(List<String> args) {
  for (final nome in getNomes()) {
    print(nome);
  }
}

Iterable<String> getNomes() sync*{
  print('colocando Ana');
  yield 'Ana';
  print('colocando Joao');
  yield 'Joao';
  print('colocando Pedro');
  yield 'Pedro';
  print('colocando Tais');
  yield 'Tais';
  print('colocando Lucas');
  yield 'Lucas';
  print('produzindo tamplate');
  yield* templateNomes();
}

Iterable<String> templateNomes() sync*{
  print('colocando Maria');
  yield 'Maria';
  print('colocando Sara');
  yield 'Sara';
  print('colocando Rui');
  yield 'Rui';
}

