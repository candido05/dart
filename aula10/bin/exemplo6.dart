void main(List<String> args) {
  print({'nome': 'Joao', 'idade': 42} + {'endereço': '402 Rua das Roseiras'});
  print({'nome': 'Carlos', 'idade': 42} - {'idade': 42});
  print({'nome': 'Humberto', 'idade': 42} * 2);
}

extension OperacoesMap<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {
    ...this, ...other,
  };

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..remove((key, value) {
      return other.containsKey(key) && other[key] == values;
    });
  }

  Iterable<Map<K, V>> operator *(int multi) sync* {
    for(int i = 0; i < multi; i++){
      yield this;
    }
  }
}