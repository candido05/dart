void main(List<String> args) {

  final mae = Mae();
  print(mae.familia);
  final pai = Pai();
  print(pai.familia);  
}

enum Familia{mae, pai, irmao, filho, avos}

class Pessoa{

  final Familia familia;
  const Pessoa({required this.familia});

}

class Mae extends Pessoa{
  const Mae() : super(familia: Familia.mae);
}

class Pai extends Pessoa {
  const Pai() : super(familia: Familia.pai);
}
