import 'package:shikimori_api/shikimori_api.dart';

class Person {
  final int id;
  final String name;
  final String russian;
  final AnimeImage image;
  final String url;

  Person({
    required this.id,
    required this.name,
    required this.russian,
    required this.image,
    required this.url,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'],
      name: json['name'],
      russian: json['russian'],
      image: AnimeImage.fromJson(json['image']),
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'Person{id: $id, name: $name, russian: $russian, image: $image, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          russian == other.russian &&
          image == other.image &&
          url == other.url;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      russian.hashCode ^
      image.hashCode ^
      url.hashCode;
}

class Role {
  final List<String> roles;
  final List<String> rolesRussian;
  final Character? character;
  final Person? person;

  Role({
    required this.roles,
    required this.rolesRussian,
    this.character,
    this.person,
  });

  factory Role.fromJson(Map<String, dynamic> json) {
    return Role(
      roles: List<String>.from(json['roles']),
      rolesRussian: List<String>.from(json['roles_russian']),
      character: json['character'] != null
          ? Character.fromJson(json['character'])
          : null,
      person: json['person'] != null ? Person.fromJson(json['person']) : null,
    );
  }

  @override
  String toString() {
    return 'Role{roles: $roles, rolesRussian: $rolesRussian, character: $character, person: $person}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Role &&
          runtimeType == other.runtimeType &&
          roles == other.roles &&
          rolesRussian == other.rolesRussian &&
          character == other.character &&
          person == other.person;

  @override
  int get hashCode =>
      roles.hashCode ^
      rolesRussian.hashCode ^
      character.hashCode ^
      person.hashCode;
}
