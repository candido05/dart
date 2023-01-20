void main(List<String> args) {
  
  final pessoa1 = Pessoa(nome: 'Helio', idade: 21);
  print(pessoa1);
  print('nome: ${pessoa1.nome}, idade: ${pessoa1.idade}');
}

class Pessoa{

  final String nome;
  final int idade;

  Pessoa({
    required this.nome,
    required this.idade,
  });
}