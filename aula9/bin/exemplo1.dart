void main(List<String> args) {

  final pessoa = Pessoa();
  pessoa.pular(velocidade: 0.1);
  pessoa.andar(velocidade: 6.0); 
}

mixin Velocidade {

  abstract double velocidade;
}

mixin PodePular on Velocidade{

  void pular({required double velocidade}) {
    print('$runtimeType esta pulando na velocidade $velocidade');
    this.velocidade = velocidade;
  }
}

mixin Andar on Velocidade {

  void andar({required double velocidade}) {
    print('$runtimeType está andando na velocidade $velocidade');
    this.velocidade = velocidade;
  }
}

class Pessoa with Velocidade, PodePular, Andar {

  @override
  double velocidade;
  Pessoa() : velocidade = 0.0;
}