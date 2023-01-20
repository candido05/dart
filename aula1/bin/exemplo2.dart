void main(List<String> args) {
  
  late final valor1 = 10;
  print(valor1);

  late final valor2 = getValor();
  
  print(valor1);
  print(valor2);
}

int getValor() {
  print('função cahamda');
  return 50;
}