void main(List<String> args) async{
  
  final somaGeral = await soma().reduce(add);
  print('a soma de todos os numeros é: $somaGeral');
}

int add(int a, int b)  => a + b;

Stream<int> soma() async* {

  yield 10;
  yield 20;
  yield 5;
  yield 9;
  yield 81;
}