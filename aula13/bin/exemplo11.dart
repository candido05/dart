void main(List<String> args) async{
  
  final todosNomes = await nomes().toList();
  for (final nomes in todosNomes) {
    print(nomes);
  }
}

Stream<String> nomes() async* {
  yield 'João';
  yield 'Pedro';
  yield 'Carlos';
  yield 'Marcos';
}