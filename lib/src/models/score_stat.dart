class ScoreStat {
  final int name;
  final int value;

  ScoreStat({required this.name, required this.value});

  factory ScoreStat.fromJson(Map<String, dynamic> json) {
    return ScoreStat(
      name: json['name'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }

  @override
  String toString() {
    return 'ScoreStat{name: $name, value: $value}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScoreStat &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          value == other.value;

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}
