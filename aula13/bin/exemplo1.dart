Future<void> main(List<String> args) async {

  print(await nome());
  print(await endereco());
  print(await telefoneNumero());
  print(await cidade());
  print(await pais());
  print(await codigoPostal());
  
}

Future<String> nome() async => 'Joao Pedro';
Future<String> endereco() async => 'Rua Manoel Orquides';

Future<String> telefoneNumero() => Future.delayed(const Duration(seconds: 5),
  () => '555-5555-5555',
);

Future<String> cidade() async => Future.delayed(const Duration(milliseconds: 1500),
  () => 'Santa Maria'
);

Future<String> pais() async => 'Brasil';

Future<String> codigoPostal() async => Future.delayed(const Duration(seconds: 2),
  () => '12345'
);