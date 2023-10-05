class Activite {
  final int id;
  final String title;
  final String description;
  final String type;

  const Activite({required this.id, required this.title, required this.description, required this.type});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': title, 'description': description, 'type': type};
  }
}
