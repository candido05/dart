void main(List<String> args) {
  
  const pessoa1 = Pessoa(nome: 'lia', idade: 18);
  print('nome: ${pessoa1.nome}, idade :${pessoa1.idade}');
  print('-----------------');

  const pessoa2 = Pessoa.matheus();
  print('nome: ${pessoa2.nome}, idade :${pessoa2.idade}');
  print('-----------------');

  const pessoa3 = Pessoa.carlos(22);
  print('nome: ${pessoa3.nome}, idade :${pessoa3.idade}');
  print('-----------------');

  const pessoa4 = Pessoa.outros();
  print('nome: ${pessoa4.nome}, idade :${pessoa4.idade}');
  print('-----------------');

  const pessoa5 = Pessoa.outros(nome: 'Gil', idade: 21);
  print('nome: ${pessoa5.nome}, idade :${pessoa5.idade}');
  print('-----------------');
}

class Pessoa{

  final String nome;
  final int idade;

  const Pessoa({
    required this.nome,
    required this.idade,
  });

  const Pessoa.matheus()
      : nome = 'Matheus',
        idade = 20;

  const Pessoa.carlos(
    this.idade,
  ) : nome = 'Carlos';

  const Pessoa.outros({
    String? nome,
    int? idade,
  })  : nome = nome ?? 'Miguel',
        idade = idade ?? 30;
}