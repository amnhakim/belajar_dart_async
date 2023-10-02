Future<String> firstName() async {
  return 'Aiman';
}

Future<String> lastName() async {
  return 'Hakim';
}

Future<String> sayHello(String name) async {
  // return 'Hello $name';
  throw Exception('Ups');
}

Future<void> say() async {
  try {
    var first = await firstName();
    var last = await lastName();
    var hello = await sayHello('$first $last');
    print(hello);
  } catch (e) {
    print(e);
  } finally {
    print('Done say()');
  }
}

void main(List<String> args) {
  say();
  print('Done');
}
