void main(List<String> args) {
  
  final info = {
    'nome' : 'Liz',
    'idade' : 19
  };

  print(info);
  print(info['nome']);
  print(info['idade']);
  print('------------------');

  print(info.keys);
  print(info.values);
  print('------------------');

  info.putIfAbsent('altura', () => 165);
  print(info);
  print('------------------');

  info['altura'] = 172;
  print(info);
  print('------------------');

  for (final informacoes in info.entries){
    print(informacoes.key);
    print(informacoes.value);
  }
  print('------------------');

  if (info.containsKey('altura')){
    print("Altura é ${info['altura']}");
  } else {
    print('altura não encontrada');
  }

  print('------------------');
  print(info['peso']);
  print('------------------');

  final numerosChave = {
    10: 30, 
    20 :50};

  print(numerosChave);
  print(numerosChave[10]);

}