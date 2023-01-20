void main(List<String> args) {
  
  final carro = Carro();

  carro.acelerador(velocidade: 50);
  carro.acelerador(velocidade: 120);
  carro.frear();
}

class Carro {

  int velocidade = 0;

  void acelerador({ required int velocidade}) {
    this.velocidade = velocidade;
    print('Acelerando para a velocidade $velocidade km/h');
  }

  void frear() {
    velocidade = 0;
    print('parando....');
    print('parado');
  }
}