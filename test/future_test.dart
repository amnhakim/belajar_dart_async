import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => 'Aiman Hakim');
}

void main() {
  test('Future Matcher', () {
    final name = getName();
    expect(name, completion(equals('Aiman Hakim')));
  });

  test('Future Test', () async {
    final name = await getName();
    expect(name, 'Aiman Hakim');
  });
}
