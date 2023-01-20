void main(List<String> args) {
  
  print(Carro._contador);
  Carro(nome: 'HB20');
  print(Carro._contador);
  Carro(nome: 'Prius');
  print(Carro._contador);
 
}

class Carro {

  static int _contador = 0;
  final String nome;

  static int get (velocidade) => _contador;

  static void _incrementaVelocidade() => _contador++;

  Carro({required this.nome}) {
    _incrementaVelocidade();
  }

} 