void main(List<String> args) {
  
  const int valor1 = 20;
  const int valor2 = 30;

  print(valor1 + valor2 + 25 / (valor2 * 2));

  const double valor3 = 45.75;
  const valor4 = (valor1 * valor2) ~/ valor3;
  print(valor4);

  int valor5 = 12;
  print(valor5++);
  print(--valor5);

  int valor6 = ++valor5;
  print(valor6);
  
  print(~-10000);
  print(~5);

  print(valor6 & 20);
  print(valor6 | 20);
  print(valor6 ^ 20);
  print(valor6 >> 20);
  print(valor6 << 20);
}