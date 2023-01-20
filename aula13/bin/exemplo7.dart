void main(List<String> args) async{
  
  await for (final valor in numeros()){
    print(valor);
  }

  print('-------------------');

  await for (final valor in numeros(fim: 10, f: numerosPares)){
    print(valor);
  }

  print('-------------------');

  await for (final valor in  numeros(fim: 20, f: numerosImpares)){
    print(valor);
  }
}

typedef EstaContido = bool Function(int valor);

bool numerosPares(int valor) => valor % 2 == 0;
bool numerosImpares(int valor) => valor % 2 != 0;

Stream<int> numeros({ int inicio = 0, int fim = 12, EstaContido? f}) async*{

  for (int i = inicio; i < fim; i++) {
    if (f == null || f(i)) {
      yield i;
    }
  }
}