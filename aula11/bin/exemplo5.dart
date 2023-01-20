void main(List<String> args) {
  print(TipoAnimal.chachorro.contemUpperCase);
  print(TipoAnimal.gato.contemUpperCase);
  print(TipoAnimal.peixeDourado.contemUpperCase);
}

enum TipoAnimal{

  gato, chachorro, peixeDourado,
}

extension on Enum {

  bool get contemUpperCase => name.contains(RegExp(r'[A-Z]')); 
}