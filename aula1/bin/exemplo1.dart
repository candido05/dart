void main(List<String> args) {
  
  const palavra = 'palavra';
  String nome = 'candido';
  print(nome);

  nome = 'charlotte';
  print(nome);
  print(palavra);

  final idade = 21;
  print(idade);

  print('$nome tem $idade anos');

  final anos = [2020, 2021, 2022, 2023];
  anos.add(2024);
  print(anos);

  anos.remove(2022);
  anos.add(2011);
  print(anos);

  anos.removeAt(1);
  print(anos);
  print(anos.length);

  String cidade = 'Pombal';
  var local = '';
  local = cidade;
  print(local);
  print(cidade);
}