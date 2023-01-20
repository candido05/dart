import 'dart:async';

void main(List<String> args) async{
  
  await for (final nomes in nomes.capitalized) {
    print(nomes);
  }

  print('------------------');
  
  await for (final nomes in nomes.capitalizedUsandoMap) {
    print(nomes);
  }
}

Stream<String> nomes = Stream.fromIterable(['Cecilia', 'Amanda', 'Pedro']);

extension on Stream<String> {

  Stream<String> get capitalized => transform(LetraMaiuscula());
  Stream<String> get capitalizedUsandoMap => map((nome) => nome.toUpperCase());
}

// entra uma string 'normal' e sai com todas as letras maiúscula
class LetraMaiuscula extends StreamTransformerBase<String, String> {

  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((nome) => nome.toUpperCase());
  }
}