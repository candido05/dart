void main(List<String> args) {
  
  print(Veiculo.carro());
  print(Veiculo.trator());
}

class Veiculo{

  const Veiculo();

  factory Veiculo.carro() => Carro();
  factory Veiculo.trator() => Trator();

  @override
  String toString() {
    return 'veiculo é do tipo $runtimeType';
  }
}

class Trator extends Veiculo{
  const Trator();
}

class Carro extends Veiculo{

  const Carro();
}