void main(List<String> args) {
  
  const String? nome = null;
  int? numero = null;

  print(nome);
  print(numero);

  numero = 9;
  print(numero);

  const algumValor = null;
  print(algumValor);

  String? cor;
 // cor = 'verde';
  cor ??= 'azul'; // se cor for null, entoa recebe um valor
  print(cor);
}