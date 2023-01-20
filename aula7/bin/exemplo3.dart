void main(List<String> args) {
  
  TipoAnimal.cachorro.pulo();
  TipoAnimal.canguru.pulo();
  TipoAnimal.peixe.pulo();

}

// mesma coisa de interface em java
mixin Pulo {

  int get contador;

  void pulo() {
    if (contador < 1) {
      print('nao pode pular');
    } else {
      print('pulou');
    }
  }
}

enum TipoAnimal with Pulo {

  gato(contador: 4),
  cachorro(contador: 4),
  canguru(contador: 8),
  peixe(contador: 0);

  @override final int contador;

  const TipoAnimal( {
    required this.contador,
  });
}