void main(List<String> args) {
  
  AnimalTipo.cachorro
  ..correndo()
  ..pulo();

  AnimalTipo.gato
  ..correndo()
  ..pulo();

  AnimalTipo.canguru
  ..correndo()
  ..pulo();
}

enum AnimalTipo{

  gato,
  cachorro,
  canguru;

  void correndo() {
    print('$this está correndo');
  }
}

extension Pulo on AnimalTipo{

  void pulo() {
    print('$this está pulando');
  }
}