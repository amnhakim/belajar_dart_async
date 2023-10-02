Stream<int> asyncNumber() async* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

void main(List<String> args) {
  asyncNumber().forEach((element) {
    print(element);
  });

  print('Done');
}
