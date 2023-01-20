void main(List<String> args) {
  
  final double valorDouble = intOuDouble();
  print(valorDouble);
  final int valorInt = intOuDouble();
  print(valorInt);
}

T intOuDouble<T extends num>() {

  switch(T) {
    case int:
      return 1 as T;
    case double:
      return 1.1 as T;
    default:
      throw Exception('valor não é nem int nem double');  
  }
}