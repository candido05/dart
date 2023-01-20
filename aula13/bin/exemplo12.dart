void main(List<String> args) async{
  
  final resultado = await nomes().
  asyncMap((event) => extraindoCaracteres(event)).fold('', (previous, element) {
    final elements = element.join('');
    return '$previous $elements';
  });

  print(resultado);
}

Stream<String> nomes() async* {

  yield 'João';
  yield 'Pedro';
  yield 'Carlos';
  yield 'Marcos';
}

Future<List<String>> extraindoCaracteres(String letra) async {

  final caracteres = <String>[];

  for (final caracter in letra.split('')) {
    await Future.delayed(Duration(milliseconds: 200));
    caracteres.add(caracter);
  }

  return caracteres;
}