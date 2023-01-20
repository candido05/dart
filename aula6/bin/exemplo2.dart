import 'package:collection/collection.dart';

void main(List<String> args) {

  final nomes = {'Rebeca', 'Luis', 'Cecilia', 'Pedro', 'Rui'};
  nomes.add('Rebeca');
  print(nomes);
  print('--------------');

  final nomes2 = ['Marcos', 'Elias', 'Vitor', 'Fabio'];
  final nomesUnicos = {...nomes2};
  print(nomes2);
  print(nomesUnicos);
  print('--------------');

  if (nomes.contains('Luis')) {
    print('Luis esta na lista');
  } else {
    print('Luis não esta na lista');
  }

  print('--------------');

  final numeros1 = {20, 50, 15, 90, 5};
  final numeros2 = {20, 50, 15, 90, 5};

  if (numeros1 == numeros2){
    print('numeros ão iguias');
  } else {
    print('numeros não são iguais');
  }

  print('--------------');

  if(SetEquality().equals(numeros1, numeros2)){
    print('listas são iguis');
  } else {
    print('listas não são iguis');
  }

  print('--------------');

  final numeros3 = {10, 25, 60, 72, 36};
  if (SetEquality().equals(numeros1, numeros3)){
    print('listas 1 e 3 são iguis');
  } else {
    print('listas 1 e 3 não são iguis');
  }
}