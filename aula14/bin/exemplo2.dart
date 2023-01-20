import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  do {
    stdout.write('Say something: ');
    final line = stdin.readLineSync(encoding: utf8);
    switch (line?.trim().toLowerCase()) {
      case null:
        continue;
      case 'exit':
        exit(0);
      default:
        final msg = await mensagens(line!);
        print(msg);
    }
  } while (true);
}

Future<String> mensagens(String mensagem) async {

  final receivePorta = ReceivePort();

  Isolate.spawn(_comunicacao, receivePorta.sendPort);

  final broadcastReceivePosta = receivePorta.asBroadcastStream(); 
  final SendPort comunicacaoSendPort = await broadcastReceivePosta.first;
  comunicacaoSendPort.send(mensagem);

  return broadcastReceivePosta.takeWhile((element) => element is String)
    .cast<String>()
    .take(1)
    .first;
}

void _comunicacao(SendPort sendPorta) async{

  final receivePorta = ReceivePort();
  sendPorta.send(receivePorta.sendPort);

  final mensagens = receivePorta.takeWhile((element) => element is String)
    .cast<String>();

  await for (final mensagem in mensagens) {
    for (final entry in messagesAndResponses.entries) {
      if (entry.key.trim().toLowerCase() == mensagem.trim().toLowerCase()) {
        sendPorta.send(entry.value);
        continue;
      }
    }

    sendPorta.send('-------------------');
  }
}

const messagesAndResponses = {
  '': 'Ask me a question like "How are you?"',
  'Hello': 'Hi',
  'How are you?': 'Fine',
  'What are you doing?': 'Learning about Isolates in Dart!',
  'Are you having fun?': 'Yeah sure!',
};