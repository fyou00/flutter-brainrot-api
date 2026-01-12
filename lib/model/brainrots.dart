class Brainrots {
  int id;
  String name;
  String body;

  Brainrots({required this.id, required this.name, required this.body});

  factory Brainrots.fromJson(Map<String, dynamic> json) {
    return Brainrots(
      id: json['id'],
      name: json['name'],
      body: json['body'],
    );
  }
}
