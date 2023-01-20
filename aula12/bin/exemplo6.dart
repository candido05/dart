void main(List<String> args) {
  
  const tuple = Tuple(left: 1, right: 23.75);
  print(tuple);
  final trocando = tuple.troca();
  print(trocando);
  print(tuple.soma);
  print(trocando.soma);
}

class Tuple<L, R> {

  final L left;
  final R right;

  const Tuple({
    required this.left,
    required this.right
  });

  @override
  String toString() => 'Tuple, esquerda = $left, direita $right';
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> troca() => Tuple(left: right, right: left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get soma => left + right;
}