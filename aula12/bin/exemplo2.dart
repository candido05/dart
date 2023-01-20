void main(List<String> args) {
  
  print(retornarTipo(1, 10));
  print(retornarTipo('Ola', 25.35));
  print(retornarTipo('Dart', 'Kotlin'));
  print(retornarTipo(true, false));
  print(retornarTipo(25, 0.24));
}

bool retornarTipo<L, R>(L a, R b) => L == R;