void main(List<String> args) {
  
  print('Ola Mundo' - 'Mundo');
  print('Baia de Todos os Santos' - 'Baia');
  print('Rua Presidente Emilio Medici' - 'Presidente');
}

extension Remove on String {

  String operator -(String other) => 
  replaceAll(other, '');
}