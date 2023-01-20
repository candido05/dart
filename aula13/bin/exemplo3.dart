void main(List<String> args) async{
  
  final tamanho = await nomeCompleto().then((valor) => tamanhoDoNome(valor));
  print(tamanho);
}

Future<String> nomeCompleto() => Future.delayed(const Duration(seconds: 1), 
  () => 'Miguel Vaz'
);

Future<int> tamanhoDoNome(String valor) => Future.delayed(const Duration(seconds: 1),
  () => valor.length
); 