void main(List<String> args) {

  final string = 'abracadabra';

  var removendoABC = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }..removeAll([null])..cast<String>();

  print(removendoABC);

  print('-----------------\n');

  final todosNumeros = Iterable.generate(100);

  final numerosPares = [
    for (final numero in todosNumeros)
      if (numero % 2 == 0) 
        numero
  ];

  final numerosParesFuncao = todosNumeros.where((numero) 
  => numero % 2 == 0);

  final numerosImpares = [
    for (final numero in todosNumeros)
      if (numero % 2 != 0) 
        numero
  ];

  final numerosImparesFuncao = todosNumeros.where((numero) 
  => numero % 2 != 0);

  print(todosNumeros);
  print('\n-----------------\n');
  print('numero pares $numerosPares');
  print('\n-----------------\n');
  print('numero pares por função $numerosParesFuncao');
  print('\n-----------------\n');
  print('numeros impares $numerosImpares');
  print('\n-----------------\n');
  print('numeros impares por funcao $numerosImparesFuncao'); 

}
