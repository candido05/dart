void main(List<String> args) {
  
  final lobo = Animal(nome: 'woof', animal: AnimalType.mamifero);

  if (lobo.animal == AnimalType.ave) {
    print('${lobo.nome} é uma ave');
  } else {
    print('${lobo.nome} não é uma ave');
  }

  switch (lobo.animal) {

    case AnimalType.ave:
      print('Esse animal é uma ave');
      break;
    case AnimalType.mamifero:
      print('Esse animal é um mamifero');
      break;
    case AnimalType.molusco:
      print('Esse animal é um molusco');
      break;
  }
}

enum AnimalType {

  ave,
  mamifero,
  molusco,
}

class Animal {

  final String nome;
  final AnimalType animal;

  const Animal ({
    required this.nome,
    required this.animal,
  });
}