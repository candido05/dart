void main(List<String> args) async{
  
  try {
    print(await nomeCompleto(primeiroNome: 'Joao', segundoNome: 'Marcelo'));
    print(await nomeCompleto(primeiroNome: '', segundoNome: 'Barbos'));
  } on PriemiroNomeOuSegundoFaltandoException {
    print('primeiro nome ou segundo faltando');
  }
}

Future<String> nomeCompleto({required String primeiroNome, required String segundoNome}) {

  if (primeiroNome.isEmpty || segundoNome.isEmpty) {
    throw PriemiroNomeOuSegundoFaltandoException();
  } else {
    return Future.value('$primeiroNome $segundoNome');
  }
}

class PriemiroNomeOuSegundoFaltandoException implements Exception{
  const PriemiroNomeOuSegundoFaltandoException();
}