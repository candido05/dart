void main(List<String> args) {
  print([1, 2, 3].contemValorDuplicado);
  print([1, 2, 3, 3, 4, 5].contemValorDuplicado);
  print([4, 5, 3, 4, 3, 1, 7, 9].contemValorDuplicado);
  print(['Alan', 'Rebeca', 'Maria', 'Pedro'].contemValorDuplicado);
  print(['Alan', 'Rebeca', 'Maria', 'Pedro', 'Rebeca'].contemValorDuplicado);
}

extension on Iterable {
  bool get contemValorDuplicado => toSet().length != length;
}