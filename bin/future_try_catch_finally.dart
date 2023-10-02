Future<String> sayHello(String name) {
  // return Future.value('Hello $name');
  return Future.error(Exception('Ups'));
}

void main(List<String> args) {
  sayHello('Aiman')
      .then((value) => print(value))
      .catchError((e) => print('Error with message ${e.message}'))
      .whenComplete(() => print('All Done'));
  print('Done');
}
