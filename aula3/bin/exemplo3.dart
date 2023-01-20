void main(List<String> args) {
  
  String nome = 'Rebeca';
  String? sobrenome = 'Augusto';
  String? animal;

  print(nome.length);
  print(sobrenome.length);
  print(animal?.length);
  print(animal ?? 'gato');

}