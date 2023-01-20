void main(List<String> args) async{
  await for (final caracter in getFrase().asyncExpand((frase) => caracteres(frase))) {
    print(caracter);
  }
}

Stream<String> caracteres(String frase) async* {

  for (int i = 0; i < frase.length; i++){
    await Future.delayed(Duration(milliseconds: 300));
    yield frase[i];
  }
}

Stream<String> getFrase() async* {

  await Future.delayed(Duration(milliseconds: 200));
  yield 'O dia esta lindo';
  await Future.delayed(Duration(milliseconds: 200));
  yield 'Hoje choveu e o clima ficou agradavel para tomar chocolate quente';
}