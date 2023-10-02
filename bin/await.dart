Future<String> firstName() async {
  return 'Aiman';
}

Future<String> lastName() async {
  return 'Hakim';
}

Future<String> sayHello(String name) async {
  return 'Hello $name';
}

Future<void> say() async {
  var first = await firstName();
  var last = await lastName();
  var hello = await sayHello('$first $last');
  print(hello);
}

void main(List<String> args) {
  say();
  print('Done');
}
