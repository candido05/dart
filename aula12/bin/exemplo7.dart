void main(List<String> args) {
  
  escolha(resultado: false);
  print('----------------');
  escolha(resultado: true);
}

const idade = [100, 45, 30, 2, 90, 50, 14];
const nomes = ['Caetano', 'Charlotte', 'Cristiano'];
const distancia = [14.5, 75.2, 100.62, 98.1, 75.23];

int menorQue<T extends Comparable>(T a, T b) => a.compareTo(b);
int maiorQue<T extends Comparable>(T a, T b) => b.compareTo(a);

void escolha({required bool resultado}) {

  final comparacao = resultado ? menorQue : maiorQue;
  print([...idade]..sort(comparacao));
  print([...nomes]..sort(comparacao));
  print([...distancia]..sort(comparacao));
}