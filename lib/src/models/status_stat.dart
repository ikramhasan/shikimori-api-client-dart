class StatusStat {
  final String name;
  final int value;

  StatusStat({required this.name, required this.value});

  factory StatusStat.fromJson(Map<String, dynamic> json) {
    return StatusStat(
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
    return 'StatusStat{name: $name, value: $value}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatusStat &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          value == other.value;

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}
