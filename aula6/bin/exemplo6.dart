void main(List<String> args) {
  
  addArray();
  print('------------');
  addDicionario();
}

void addArray() {

  final nomes1 = ['Elias', 'Fabio', 'Vitor', 'Marcos'];
  final nomes2 = ['Rebeca', 'Luis', 'Cecilia', 'Pedro', 'Rui'];
  final nomesTotal = [...nomes1, ...nomes2];

  print(nomes1);
  print(nomes2);
  print(nomesTotal);

  final outraFormaNomesTotal = {...nomes1}..addAll(nomes2);
  print(outraFormaNomesTotal);
}

void addDicionario() {

  const info= {
    'nome' : 'Andre',
    'idade' : 19,
    'altura' : 1.80,
  };

  final resultado = {...info}..addAll({'peso': 86});
  print(resultado);
}