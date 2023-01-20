void main(List<String> args) async {
  
  await for (final numero in numeros()) {
    print(numero);
  }
  
  try{
    await for (final nome in nomes()) {
      print(nome);
    }
  } catch(e) {
    print(e);
  }
}

Stream<int> numeros() async*{
  for (int i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 2));
    yield i;
  }
}

Stream<String> nomes() async* {
   await Future.delayed(Duration(seconds: 1));
   yield 'Pedro';
   throw Exception('Algo deu errado');
}