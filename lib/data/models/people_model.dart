class people {
  String? id;
  String? name;
  String? gender;
  String? age;
  String? eyeColor;
  String? hairColor;
  List<String>? films;
  String? species;
  String? url;

  people.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    age = json['age'];
    eyeColor = json['eye_color'];
    hairColor = json['hair_color'];
    films = json['films'].cast<String>();
    species = json['species'];
    url = json['url'];
  }
}
