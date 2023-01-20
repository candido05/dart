void main(List<String> args) {
  
  const nomes = ['Barbara', 'Necio', 'Eliza', 'Ricardo', 'Abel'];
  print(nomes * 2);
}

// faz a multiplicação de nomes[]
extension Multiplicacao<T> on Iterable<T> {
  Iterable<T> operator * (int multi) sync* {
    for (int i = 0; i < multi; i++) {
      yield* this;
    }
  }
}