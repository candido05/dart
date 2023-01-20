void main(List<String> args) {
  
  print(Pessoa(idade: 10).idadeArredondada);
  print(Pessoa(idade: 20.4).idadeArredondada);
  print(Pessoa(idade: 21.7).idadeArredondada);
}

class Pessoa<T extends num> {

  final T idade;

  const Pessoa({required this.idade});

  int get idadeArredondada => idade.round();  
}