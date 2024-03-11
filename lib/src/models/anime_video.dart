class AnimeVideo {
  final int id;
  final String url;
  final String imageUrl;
  final String playerUrl;
  final String? name;
  final String kind;
  final String hosting;

  AnimeVideo({
    required this.id,
    required this.url,
    required this.imageUrl,
    required this.playerUrl,
    this.name,
    required this.kind,
    required this.hosting,
  });

  factory AnimeVideo.fromJson(Map<String, dynamic> json) {
    return AnimeVideo(
      id: json['id'],
      url: json['url'],
      imageUrl: json['image_url'],
      playerUrl: json['player_url'],
      name: json['name'],
      kind: json['kind'],
      hosting: json['hosting'],
    );
  }

  @override
  String toString() {
    return 'AnimeVideo{id: $id, url: $url, imageUrl: $imageUrl, playerUrl: $playerUrl, name: $name, kind: $kind, hosting: $hosting}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimeVideo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          url == other.url &&
          imageUrl == other.imageUrl &&
          playerUrl == other.playerUrl &&
          name == other.name &&
          kind == other.kind &&
          hosting == other.hosting;

  @override
  int get hashCode =>
      id.hashCode ^
      url.hashCode ^
      imageUrl.hashCode ^
      playerUrl.hashCode ^
      name.hashCode ^
      kind.hashCode ^
      hosting.hashCode;
}
