void main(List<String> args) {
  const carro = Carro();
  print(carro.tipo);
  carro.acelerando();
  carro.desacelerando();
  const moto = Moto();
  print(moto.tipo);
  moto.acelerando();
  moto.desacelerando();
}

abstract class Veiculo {
  final VeiculoTipo tipo;
  const Veiculo({required this.tipo});

  void acelerando() => print('$tipo está acelerando');
  void desacelerando() => print('$tipo está desacelerando');
}

class Carro extends Veiculo {
  const Carro() : super(tipo: VeiculoTipo.carro);
}

class Moto implements Veiculo {
  const Moto();
  @override
  void acelerando() => print('Moto está acelerando');
  @override
  void desacelerando() => print('Moto está desacelerando');
  @override
  VeiculoTipo get tipo => VeiculoTipo.moto;
}

enum VeiculoTipo {
  carro,
  trator,
  moto,
  bibicleta,
}