void main(List<String> args) {
  printPalavra();
  print(printVoid());
  nome('Julia');
  nomeNull();
  nomeNull(nome: null);
  nomeNull(nome: 'Receca');
}

void printPalavra() {
  print("ola mundo por função");
}

dynamic printVoid() {}

void nome(String nome){
  print('ola $nome');
}

void nomeNull({String? nome}){
  print('ola $nome, que pode ser null');
}