void main(List<String> args) {
  
  final gatos = <Gato> {
    Gato(nome: 'atlas', idade: 2),
    Gato(nome: 'nala', idade: 2),
    Gato(nome: 'nina', idade: 10),
  };

  gatos.forEach(print);
}

enum TipoAnimal{
  gato,
  cachorro
}

mixin Animal {

  String get nome;
  int get idade;
  TipoAnimal get tipo;

  @override
  String toString() => 'Animal $tipo, nome: $nome, idade: $idade';

  @override
  int get hashCode => Object.hash(nome, idade, tipo);

  @override
  bool operator == (Object object) => object.hashCode == hashCode;
}

class Gato with Animal {

  final int idade;
  final String nome;
  final TipoAnimal tipo;

  Gato({required this.nome, required this.idade}) 
      : tipo = TipoAnimal.gato;
}