import 'package:shikimori_api/src/models/anime.dart';
import 'package:shikimori_api/src/models/anime_image.dart';

class Character {
  final int id;
  final String name;
  final String? russian;
  final String url;
  final String? altname;
  final String japanese;
  final String? description;
  final String descriptionHtml;
  final String? descriptionSource;
  final bool favoured;
  final int threadId;
  final int topicId;
  final String updatedAt;
  final List<Seyu> seyu;
  final AnimeImage image;
  final List<Anime> animes;

  Character({
    required this.id,
    required this.name,
    this.russian,
    required this.url,
    this.altname,
    required this.japanese,
    this.description,
    required this.descriptionHtml,
    this.descriptionSource,
    required this.favoured,
    required this.threadId,
    required this.topicId,
    required this.updatedAt,
    required this.seyu,
    required this.image,
    required this.animes,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      russian: json['russian'],
      url: json['url'],
      altname: json['altname'],
      japanese: json['japanese'],
      description: json['description'],
      descriptionHtml: json['description_html'],
      descriptionSource: json['description_source'],
      favoured: json['favoured'],
      threadId: json['thread_id'],
      topicId: json['topic_id'],
      updatedAt: json['updated_at'],
      seyu: (json['seyu'] as List).map((e) => Seyu.fromJson(e)).toList(),
      image: AnimeImage.fromJson(json['image']),
      animes: (json['animes'] as List).map((e) => Anime.fromJson(e)).toList(),
    );
  }

  @override
  String toString() {
    return 'Character{id: $id, name: $name, russian: $russian, url: $url, altname: $altname, japanese: $japanese, description: $description, descriptionHtml: $descriptionHtml, descriptionSource: $descriptionSource, favoured: $favoured, threadId: $threadId, topicId: $topicId, updatedAt: $updatedAt, seyu: $seyu, image: $image, animes: $animes}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Character &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          russian == other.russian &&
          url == other.url &&
          altname == other.altname &&
          japanese == other.japanese &&
          description == other.description &&
          descriptionHtml == other.descriptionHtml &&
          descriptionSource == other.descriptionSource &&
          favoured == other.favoured &&
          threadId == other.threadId &&
          topicId == other.topicId &&
          updatedAt == other.updatedAt &&
          seyu == other.seyu &&
          image == other.image &&
          animes == other.animes;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      russian.hashCode ^
      url.hashCode ^
      altname.hashCode ^
      japanese.hashCode ^
      description.hashCode ^
      descriptionHtml.hashCode ^
      descriptionSource.hashCode ^
      favoured.hashCode ^
      threadId.hashCode ^
      topicId.hashCode ^
      updatedAt.hashCode ^
      seyu.hashCode ^
      image.hashCode ^
      animes.hashCode;
}

class Seyu {
  final int id;
  final String name;
  final String russian;
  final AnimeImage image;
  final String url;

  Seyu({
    required this.id,
    required this.name,
    required this.russian,
    required this.image,
    required this.url,
  });

  factory Seyu.fromJson(Map<String, dynamic> json) {
    return Seyu(
      id: json['id'],
      name: json['name'],
      russian: json['russian'],
      image: AnimeImage.fromJson(json['image']),
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'Seyu{id: $id, name: $name, russian: $russian, image: $image, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Seyu &&
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
