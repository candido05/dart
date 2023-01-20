import 'dart:io';

void main(List<String> args) {
  
  do {
    stdout.write('entre com um valor ou "sair" para sair: ');
    final input = stdin.readLineSync();

    if (input == 'sair'){
      break;
    } else if ((input?.length ?? 0) == 0 || input == null){
      stdout.write('entrada invalida');
      continue;
    }

    final numero = int.tryParse(input);

    if (numero == null){
      stdout.writeln('entrada invalida');
      continue;
    }

  switch (numero) {
    case 10:
        stdout.writeln('numero 10');
      break;
    case 20:
        stdout.writeln('numero 20');
      break;
    case 50:
        stdout.writeln('numero 50');
      break;  
    case 100:
        stdout.writeln('numero 100');
      break;
    default:
        stdout.writeln('outro numero');
      break;
  }

  } while (true);

}