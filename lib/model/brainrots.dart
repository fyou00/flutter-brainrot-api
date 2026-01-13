class Brainrots {
  int id;
  String name;
  String body;

  Brainrots({required this.id, required this.name, required this.body});

  factory Brainrots.fromJson(Map<String, dynamic> json) {
    return Brainrots(id: json['id'], name: json['name'], body: json['body']);
  }
}

void main() {
  Map<String, dynamic> jsonData = {
    'namaDepan': 'Ballerina',
    'namaBelakang': 'Cappuccina'
  };

  String namaDepan = jsonData['namaDepan'];
  String namaBelakang = jsonData['namaBelakang'];

  String callNamaPanjang(String namaDepan, String namaBelakang) {
    String namaPanjang = '$namaDepan' + ' ' + '$namaBelakang';
    return namaPanjang;
  }

  String namaPanjang = callNamaPanjang(namaDepan, namaBelakang);
  print(namaPanjang); // Output: Ballerina Cappuccina
}
