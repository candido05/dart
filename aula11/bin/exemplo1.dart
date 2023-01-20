void main(List<String> args) {
  print('Ola mundo'.reverso);
}

extension on String {
  String get reverso => split('').reversed.join();
}