import 'dart:io';
import 'dart:isolate';

class Parameter {
  String prefix;
  SendPort sendPort;

  Parameter(this.prefix, this.sendPort);
}

Future<void> numbers(Parameter parameter) async {
  for (var i = 0; i < 10; i++) {
    sleep(Duration(seconds: 1));
    parameter.sendPort.send('${parameter.prefix}-$i');
  }
  Isolate.exit();
}

void main(List<String> args) {
  final receivePort = ReceivePort();
  Isolate.spawn(numbers, Parameter('Aiman', receivePort.sendPort));

  receivePort.take(5).listen((event) {
    print(event);
  });

  print('Done');
}
