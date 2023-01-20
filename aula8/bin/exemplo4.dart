void main(List<String> args) {
  
  const pessoa1 = Pessoa(primeiroNome: 'Hellena', sobrenome: 'Brunet');
  print(pessoa1.nomeCompleto);
}

class Pessoa{

  final String primeiroNome;
  final String sobrenome;
  String get nomeCompleto => '$primeiroNome $sobrenome';

  const Pessoa({
    required this.primeiroNome,
    required this.sobrenome,
  });
}