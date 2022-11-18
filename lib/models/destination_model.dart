import 'dart:convert';

class DestinationModel {
  final String image;
  final String hero;
  final String name;
  final String location;

  DestinationModel({
    required this.image,
    required this.hero,
    required this.name,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'hero': hero,
      'name': name,
      'location': location,
    };
  }

  factory DestinationModel.fromMap(Map<String, dynamic> map) {
    return DestinationModel(
      image: map['image'] ?? '',
      hero: map['hero'] ?? '',
      name: map['name'] ?? '',
      location: map['location'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DestinationModel.fromJson(String source) =>
      DestinationModel.fromMap(json.decode(source));
}
