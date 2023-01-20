void main(List<String> args) {
  print(adicao());
  print(multiplicacao(12, 7));

  print(performOperation(15, 19, (a, b) => a + b));
  print(performOperation(15, 19, (a, b) => a * b));

  print(performOperation(15, 19, (a, b) => adicao()));
  
  print(performOperation(15, 19, (a, b) => multiplicacao(5, 9)));
}

int adicao([int a = 20, int b = 35]) => a + b;

int multiplicacao(int k, int y) => k * y;

int performOperation(
  int a, 
  int b,
  int Function(int, int) operacao,
) => operacao(a, b);

