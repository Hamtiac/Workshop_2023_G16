class User {
  final int id;
  final String name;
  final String username;
  final String password;
  final String type;

  const User({required this.id, required this.name, required this.username, required this.password, required this.type});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'password': password,
      'type': type,
    };
  }
}
