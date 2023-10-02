Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Programmer Zaman Now');
  });
}

void main(List<String> args) {
  hello();
  print('Done');
}
