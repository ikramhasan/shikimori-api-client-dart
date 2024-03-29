class Genre {
  final int id;
  final String name;
  final String kind;

  Genre({required this.id, required this.name, required this.kind});

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      id: json['id'],
      name: json['name'],
      kind: json['kind'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'kind': kind,
    };
  }

  @override
  String toString() {
    return 'Genre{id: $id, name: $name, kind: $kind}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Genre &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          kind == other.kind;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ kind.hashCode;
}
