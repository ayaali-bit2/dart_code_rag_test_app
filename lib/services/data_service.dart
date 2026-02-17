Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Data loaded';
}
