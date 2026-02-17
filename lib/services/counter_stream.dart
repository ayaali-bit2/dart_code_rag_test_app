Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

void listenStream() {
  countStream(3).listen((value) => print('Stream value: $value'));
}
