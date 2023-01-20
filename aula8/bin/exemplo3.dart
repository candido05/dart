void main(List<String> args) {
  
  final veic = Veiculo(4);
  print(veic);
  print(veic.toString());

  print(Carro());
  print(Motocicleta());
}

class Veiculo {

  final int contadorRodas;
  
  const Veiculo(this.contadorRodas);

  @override
  String toString() {
    
    return '$runtimeType com $contadorRodas rodas';
  }
}

class Carro extends Veiculo{

  const Carro() : super(4);
}

class Motocicleta extends Veiculo{

  const Motocicleta() : super(2);
}