void main(List<String> args) {
  descricaoUsuario();
  descricaoUsuario(idade: 22);
  descricaoUsuario(nome: 'Rebeca');
  descricaoUsuario(nome: 'Tereza', idade: 21);

  nomeCompleto('Hugo', 'Salazar');
  nomeCompleto(null, null);
  nomeCompleto('Igor', null);

}

void descricaoUsuario({String? nome, int? idade}){
  print('O usuario $nome tem $idade anos de idade');
}

void nomeCompleto(String? primeiroNome, String? sobrenome) {
  print('nome completo é: $primeiroNome $sobrenome');
}