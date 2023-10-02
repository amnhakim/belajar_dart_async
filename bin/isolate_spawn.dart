import 'dart:io';
import 'dart:isolate';

Future<void> sayHello(String name) async {
  sleep(Duration(seconds: 2));
  print('Hello $name');
  Isolate.exit();
}

void main(List<String> args) {
  Isolate.spawn(sayHello, 'Aiman'); // sila refer pada receive_send_port
  print('Done');
}
