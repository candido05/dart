void main(List<String> args) {
  Humano().correr();
}

class Bipede {
  const Bipede();
}

class Humano extends Bipede with PodeCorrer{
  const Humano();
}

mixin PodeCorrer on Bipede {
  void correr() {
    print('$runtimeType está correndo');
  }
}

class NaoTemPes {
  const NaoTemPes();
}

class Peixe extends NaoTemPes{
  const Peixe();
}