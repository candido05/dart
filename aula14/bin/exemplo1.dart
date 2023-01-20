import 'dart:isolate';

void main(List<String> args) async{
  
  await for (final msg in mensagens().take(10)){
    print(msg);
  }
}

Stream<String> mensagens() {
  final resivePorta = ReceivePort();
  return Isolate.spawn(_mensagens, resivePorta.sendPort)
  .asStream()
  .asyncExpand((_) => resivePorta)
  .takeWhile((element) => element is String)
  .cast();
}

void _mensagens(SendPort sendPorta) async{
  await for (final agora in Stream.periodic(const Duration(milliseconds: 200),
    (_) => DateTime.now().toIso8601String()
  )) {
    sendPorta.send(agora);
  }
}