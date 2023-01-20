void main(List<String> args) {
  
  const pais = {
    'mae' : Pessoa(),
    'pai' : Pessoa(),
  };

  const filhosEpet = {
    'filho' : Pessoa(),
    'filha' : Pessoa(),
    'peixe' : Peixe(),
  };

  final todosOsValores = [
    pais, filhosEpet
  ];

  descricao(todosOsValores);
}

typedef RespirandoAlgo<T extends PodeRespirar> = Map<String, T>;

void descricao(Iterable<RespirandoAlgo> valores) {
  for (final map in valores) {
    for (final chaveValor in map.entries){
      print('respirar() é chamada em ${chaveValor.key}');
      chaveValor.value.respirar();
    }
  }
}

mixin PodeRespirar{
  void respirar();
}

class Pessoa with PodeRespirar {

  const Pessoa();
  @override
  void respirar() {
    print('pessoa estar respirando');
  }
}

class Peixe with PodeRespirar {

  const Peixe();
  @override
  void respirar() {
    print('peixe estar respirando');
  }
}