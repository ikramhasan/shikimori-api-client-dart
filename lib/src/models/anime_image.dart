class AnimeImage {
  final String original;
  final String preview;
  final String x96;
  final String x48;

  AnimeImage({
    required this.original,
    required this.preview,
    required this.x96,
    required this.x48,
  });

  factory AnimeImage.fromJson(Map<String, dynamic> json) {
    return AnimeImage(
      original: 'https://shikimori.one${json['original']}',
      preview: 'https://shikimori.one${json['preview']}',
      x96: 'https://shikimori.one${json['x96']}',
      x48: 'https://shikimori.one${json['x48']}',
    );
  }

  @override
  String toString() {
    return 'AnimeImage{original: $original, preview: $preview, x96: $x96, x48: $x48}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimeImage &&
          runtimeType == other.runtimeType &&
          original == other.original &&
          preview == other.preview &&
          x96 == other.x96 &&
          x48 == other.x48;

  @override
  int get hashCode =>
      original.hashCode ^ preview.hashCode ^ x96.hashCode ^ x48.hashCode;
}
