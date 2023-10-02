Future<String> name() {
  return Future.value('Aiman Hakim Jailani');
}

void main(List<String> args) {
  name()
      .then((value) => value.split(' ')) // Future<List<String>>
      .then((value) => value.reversed) // Future<Iterable<String>>
      .then((value) =>
          value.map((e) => e.toUpperCase())) // Future<Iterable<String>>
      .then((value) => print(value));
  print('Done');
}
