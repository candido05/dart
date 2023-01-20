void main(List<String> args) {
  
  final itebable = Iterable.generate(20, 
  (i) => getNumero(i));

  for(final numero in itebable.take(10)) {
    print(numero);
  }

  print('\n-----------------------------\n');

  const nomes = ['Marcos', 'Elias', 'Vitor', 'Fabio'];

  final upperCaseNomes = nomes.map((e) {
      print('Map chamado');
      return e.toUpperCase();
  });

  for (final e in upperCaseNomes.take(3)){
    print(e);
  }
      
}

String getNumero(int i) {
    print('getNumero chamado');
    return 'Numero #$i';
}