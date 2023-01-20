
void main(List<String> args) {
  print(add());
  print(add(null, 7));
  print(add(2, 8));
  print(add(9, 9));
}

int add([int? a, int? b]) {
  return (a + b);
}

extension NullAdicionar<T extends num> on T? {

  T operator +(T? other) {
    final soma = this;

    if (this != null && other == null) {
      return this as T;
    } 
    else if (this == null && other != null) {
      return other;
    } 
    else if (soma != null && other != null) {
      return soma + other as T;
    }
     else {
      return 0 as T;
    }
  }
}