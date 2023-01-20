void main(List<String> args) {
  //Range
  print(1.ate(10));
  print(1.ate(10, incluso: false));
  print(10.ate(1));
  print(10.ate(1, incluso: false));
  print(10.ate(10));
  print(10.ate(10, incluso: false));
}

extension on int {
  Iterable<int> ate(int fim, {bool incluso = true}) => fim > this
      ? [for (int i = this; i < fim; i++) i, if (incluso) fim]
      : [for (int i = this; i > fim; i--) i, if (incluso) fim];
}