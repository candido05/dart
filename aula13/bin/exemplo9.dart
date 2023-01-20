import 'dart:async';

void main(List<String> args) async{

  final controller = StreamController<String>();
  controller.sink.add('Ola');
  controller.sink.add('Mundo');

  await for (final valor in controller.stream) {
    print(valor);
  }

  controller.close();
}