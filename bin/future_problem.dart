Future<String> firstName() async {
  return 'Aiman';
}

Future<String> lastName() async {
  return 'Hakim';
}

Future<String> sayHello(String name) async {
  return 'Hello $name';
}

void main(List<String> args) {
  firstName().then((firstName) {
    return lastName().then((lastName) {
      var fullName = '$firstName $lastName';
      return sayHello(fullName);
    });
  }).then((value) => print(value));

  print('Done');
}
