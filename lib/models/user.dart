class User {
  final String id;
  String name;

  User(this.id, this.name);

  void updateName(String newName) {
    name = newName;
  }

  String get displayName => "$name ($id)";

  void printUser() {
    print(displayName);
  }
}
