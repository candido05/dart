void main(List<String> args) {

  final gato = Gato(idade: 2);
  print(gato.idade);
  gato.incrementaIdade();
  print(gato.idade);
}

mixin Idade {

  abstract int idade;
  void incrementaIdade() => idade++;
}

class Gato with Idade {

  @override 
  int idade = 0;

  Gato({required this.idade});
}