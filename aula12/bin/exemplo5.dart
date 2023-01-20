void main(List<String> args) {
  
  const pessoa = Pessoa(altura: 1.82);
  print(pessoa.altura);
  const cachorro = Cachorro(altura: 1);
  print(cachorro.altura);
}

mixin Altura<H extends num> {
  H get altura;
}

typedef AlturaInt = Altura<int>;
typedef AlturaDouble = Altura<double>;

class Pessoa with AlturaDouble {

  final double altura;
  const Pessoa({required this.altura});
}

class Cachorro with AlturaInt {

  final int altura;
  const Cachorro({required this.altura});
}