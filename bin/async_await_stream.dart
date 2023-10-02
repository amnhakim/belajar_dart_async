Stream<String> names() {
  return Stream.fromIterable(['Aiman', 'Hakim', 'Jailani']);
}

Future<String> fullName() async {
  String name = '';
  await for (String value in names()) {
    name = name + '$value ';
  }
  return name.trim();
}

void main(List<String> args) {
  fullName().then((value) => print(value));

  print('Done');
}
