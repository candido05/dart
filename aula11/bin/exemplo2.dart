void main(List<String> args) {
  print([1, 2, 3, 4].soma);
  print([10, 15, 20, 17, 9].soma);
}

extension Somar<T extends num> on Iterable<T> {

  T get soma => reduce((a, b) => a + b as T );
}