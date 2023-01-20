void main(List<String> args) {
  
  print(soma(8, 10)());

  print(doSomething(40, 5)());
}

int Function() soma(
  int a,
  int b,
) => 
    () => a + b;

int Function() doSomething(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs;