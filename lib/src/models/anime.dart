import 'package:shikimori_api/shikimori_api.dart';

class Anime {
  final int id;
  final String name;
  final String? russian;
  final AnimeImage image;
  final String url;
  final String kind;
  final String score;
  final String status;
  final int episodes;
  final int episodesAired;
  final String airedOn;
  final String? releasedOn;

  Anime({
    required this.id,
    required this.name,
    this.russian,
    required this.image,
    required this.url,
    required this.kind,
    required this.score,
    required this.status,
    required this.episodes,
    required this.episodesAired,
    required this.airedOn,
    this.releasedOn,
  });

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      id: json['id'],
      name: json['name'],
      russian: json['russian'],
      image: AnimeImage.fromJson(json['image']),
      url: 'https://shikimori.one${json['url']}',
      kind: json['kind'],
      score: json['score'],
      status: json['status'],
      episodes: json['episodes'],
      episodesAired: json['episodes_aired'],
      airedOn: json['aired_on'],
      releasedOn: json['released_on'],
    );
  }

  @override
  String toString() {
    return 'Anime{id: $id, name: $name, russian: $russian, image: $image, url: $url, kind: $kind, score: $score, status: $status, episodes: $episodes, episodesAired: $episodesAired, airedOn: $airedOn, releasedOn: $releasedOn}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Anime &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          russian == other.russian &&
          image == other.image &&
          url == other.url &&
          kind == other.kind &&
          score == other.score &&
          status == other.status &&
          episodes == other.episodes &&
          episodesAired == other.episodesAired &&
          airedOn == other.airedOn &&
          releasedOn == other.releasedOn;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      russian.hashCode ^
      image.hashCode ^
      url.hashCode ^
      kind.hashCode ^
      score.hashCode ^
      status.hashCode ^
      episodes.hashCode ^
      episodesAired.hashCode ^
      airedOn.hashCode ^
      releasedOn.hashCode;
}
