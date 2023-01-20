void main(List<String> args) {
  
  print(adicao());
  print(multiplicacao(20, 4));
}

int adicao([int a = 9, int b = 10]) {
  return a + b;
}

int multiplicacao(int a, int b) {
  return a * b;
}
