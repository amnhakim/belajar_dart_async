import 'dart:io';

Future<String> block() async {
  sleep(Duration(seconds: 5));
  return 'Block';
}

void main(List<String> args) {
  print('Before');
  block().then((value) => print(value));

  print('Done');
}
