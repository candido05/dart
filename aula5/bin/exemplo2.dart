void main(List<String> args) {
  
  printAlgo();
  printAlgo(palavra: null);
  printAlgo(palavra: 'Paralelepipado');

  printNome();
  printNome(nome: 'Pedro');

  idadeUsuario(idade: 21);
  idadeUsuario(idade: null);
}

void printAlgo({String? palavra = 'Paralelepipado'}) {
  print(palavra);
}

void printNome({String nome = 'Cicero'}) {
  print('ola, $nome');
}

void idadeUsuario({required int? idade}){

  if (idade != null) {
    final acressimo = ++idade;
    print('Voce terá $acressimo anos de idade em 2024');
  } else {
    print('voce não falou sua idade');
  }
}