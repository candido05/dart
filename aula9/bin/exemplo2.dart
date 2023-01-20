void main(List<String> args) {

  final pessoa = Pessoa(primeiroNome: 'Caetano', sobrenome: 'Jose');
  print(pessoa.nomeCompleto);
  print(nome(pessoa));
}

String nome(NomeCompleto nome) => nome.nomeCompleto;

mixin PrimeiroNome{
  String get primeiroNome;
}

mixin Sobrenome {
  String get sobrenome;
}

mixin NomeCompleto on PrimeiroNome, Sobrenome {
  String get nomeCompleto => '$primeiroNome $sobrenome';
}

class Pessoa with PrimeiroNome, Sobrenome, NomeCompleto {

  @override
  final String primeiroNome;  
  @override
  final String sobrenome;

  Pessoa({
    required this.primeiroNome, 
    required this.sobrenome
  });
}