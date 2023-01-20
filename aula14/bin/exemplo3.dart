import 'dart:isolate';
import 'dart:io';
import 'dart:convert';

void main(List<String> args) async {
  final responder = await Responder.create();

  do {
    stdout.write('Say something (or type exit): ');
    final line = stdin.readLineSync(encoding: utf8);
    switch (line?.trim().toLowerCase()) {
      case null:
        continue;
      case 'exit':
        exit(0);
      default:
        final msg = await responder.getMessage(line!);
        print(msg);
    }
  } while (true);
}

class Responder {
  final ReceivePort recebePorta;
  final Stream<dynamic> broadcastRecebePorta;
  final SendPort comunicacaoEnviarPorta;

  Responder({
    required this.recebePorta,
    required this.broadcastRecebePorta,
    required this.comunicacaoEnviarPorta,
  });

  static Future<Responder> create() async {
    final rp = ReceivePort();
    Isolate.spawn(
      _comunicacao,
      rp.sendPort,
    );

    final broadcastRp = rp.asBroadcastStream();
    final SendPort communicatorSendPort = await broadcastRp.first;

    return Responder(
      recebePorta: rp,
      broadcastRecebePorta: broadcastRp,
      comunicacaoEnviarPorta: communicatorSendPort,
    );
  }

  Future<String> getMessage(String mensagem) async {
    comunicacaoEnviarPorta.send(mensagem);

    return broadcastRecebePorta
        .takeWhile((element) => element is String)
        .cast<String>()
        .take(1)
        .first;
  }
}

void _comunicacao(SendPort enviarPorta) async {
  final receivePorta = ReceivePort();
  enviarPorta.send(receivePorta.sendPort);

  final mensagens = receivePorta.takeWhile((element) => element is String).cast<String>();

  await for (final mensagem in mensagens) {
    for (final entry in messagesAndResponses.entries) {
      if (entry.key.trim().toLowerCase() == mensagem.trim().toLowerCase()) {
        enviarPorta.send(entry.value);
        continue;
      }
    }
  }
}

const messagesAndResponses = {
  '': 'Ask me a question like "How are you?"',
  'Hello': 'Hi',
  'How are you?': 'Fine',
  'What are you doing?': 'Learning about Isolates in Dart!',
  'Are you having fun?': 'Yeah sure!',
};