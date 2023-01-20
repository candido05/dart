void main(List<String> args) async{
  
  await for (final nomes in nomes()){
    print(nomes);
  }
}

Stream<String> nomesMasculinos() async* {

  yield 'João';
  yield 'Pedro';
  yield 'Carlos';
  yield 'Marcos';
}

Stream<String> nomesFemininos() async* {

  yield 'Maria';
  yield 'Ana';
  yield 'Isabel';
  yield 'Fernanda';
}

Stream<String> nomes() async* {

  yield* nomesMasculinos();
  yield* nomesFemininos();
}