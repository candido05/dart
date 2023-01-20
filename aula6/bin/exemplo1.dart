void main(List<String> args) {

  const nomes = ['Rebeca', 'Luis', 'Cecilia', 'Pedro', 'Rui'];

  for(final nome in nomes){
    print(nome);
  }

  print('--------------');

  for (final nome in nomes.reversed){
    print(nome);
  }

  print('--------------');

  if (nomes.contains('Pedro')) {
    print('Pedro esta presente na lista');
  }

  print('--------------');

  for (final nome in nomes.where((String nome) => nome.startsWith('R'))){
    print(nome);
  }

  print('--------------');

  print(nomes[0]);
  print(nomes[2]);
  print(nomes[3]);

  print('--------------');

  nomes.sublist(1).forEach(print);
  print('--------------');
  nomes.sublist(1, 3).forEach(print);
  print('--------------');
  nomes.sublist(0, 2).forEach(print);
  print('--------------');

  const nomes1 = ['Marcos', 'Elias', 'Vitor', 'Fabio'];
  const nomes2 = ['Elias', 'Fabio', 'Vitor', 'Marcos'];
  const nomes3 = ['Marcos', 'Elias', 'Vitor', 'Fabio'];

  if (nomes1 == nomes2){
    print('listas são iguais');
  } else {
    print('listas não são iguais');
  }

  if (nomes1 == nomes3){
    print('listas 1 e 3 são iguais');
  } else {
    print('listas não são iguais');
  }

  print('--------------');

  nomes.map((e) => e.toUpperCase()).forEach(print);
  nomes.map((e) => e.length).forEach(print);

  print('--------------');

  final numeros = [1, 2, 3, 4, 5];
  final soma = numeros.fold(0, (int previousValue, int element)
   => previousValue + element);
   print(soma);
  
  print('--------------');

  final tamanhoTotal = nomes.fold(0, (previousValue, element) 
  => previousValue + element.length);
  print(tamanhoTotal);

  print('--------------');

  final resultado = nomes.fold('', (previousValue, element) 
  => '$previousValue ${element.toUpperCase()}');
  print(resultado);
}