Stream<int> numbers() {
  return Stream.periodic(Duration(seconds: 2), (i) => i);
}

void main(List<String> args) {
  Stream<int> numberStream = numbers();
  Stream<int> broadcastStream = numberStream.asBroadcastStream();

  // error tidak bisa listen stream lebih 1 kali, jika ingin lebih 1 kali gunakan broadcast stream.
  // numberStream.listen((event) {
  //   print(event);
  // });
  // numberStream.listen((event) {
  //   print(event);
  // });

  broadcastStream.listen((event) {
    print(event);
  });
  broadcastStream.listen((event) {
    print(event);
  });

  print('Done');
}
