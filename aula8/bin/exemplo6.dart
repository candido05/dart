void main(List<String> args) {
  
  final carro = Carro();

  carro.acelerador(velocidade: 130);

}

class Carro {

  int _velocidade = 0;

  int get (velocidade) => _velocidade;
  set velocidade(int novaVelocidade){
    _velocidade = novaVelocidade;
  }

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