import 'package:shikimori_api/shikimori_api.dart';
import 'package:shikimori_api/src/models/score_stat.dart';

// {
//   "id": 50,
//   "name": "anime_50",
//   "russian": "аниме_50",
//   "image": {
//     "original": "/assets/globals/missing_original.jpg",
//     "preview": "/assets/globals/missing_preview.jpg",
//     "x96": "/assets/globals/missing_x96.jpg",
//     "x48": "/assets/globals/missing_x48.jpg"
//   },
//   "url": "/animes/50-anime-50",
//   "kind": "tv",
//   "score": "1.0",
//   "status": "released",
//   "episodes": 0,
//   "episodes_aired": 0,
//   "aired_on": null,
//   "released_on": null,
//   "rating": "pg_13",
//   "english": [
//     null
//   ],
//   "japanese": [
//     null
//   ],
//   "synonyms": [],
//   "license_name_ru": null,
//   "duration": 0,
//   "description": null,
//   "description_html": "<div class=\"b-text_with_paragraphs\"></div>",
//   "description_source": null,
//   "franchise": null,
//   "favoured": false,
//   "anons": false,
//   "ongoing": false,
//   "thread_id": 270127,
//   "topic_id": 270127,
//   "myanimelist_id": 50,
//   "rates_scores_stats": [],
//   "rates_statuses_stats": [],
//   "updated_at": "2022-11-26T17:19:33.411+03:00",
//   "next_episode_at": null,
//   "fansubbers": [],
//   "fandubbers": [],
//   "licensors": [],
//   "genres": [],
//   "studios": [],
//   "videos": [],
//   "screenshots": [],
//   "user_rate": null
// }

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
  final String? rating;
  final String? description;
  final List<AnimeImage>? screenshots;
  final List<Genre>? genres;
  final List<ScoreStat>? ratesScoresStats;
  final int? myAnimeListId;
  final bool? ongoing;
  final List<String>? licensors;
  final List<AnimeVideo>? videos;
  final List<StatusStat>? ratesStatusesStats;

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
    this.rating,
    this.description,
    this.screenshots,
    this.genres,
    this.ratesScoresStats,
    this.myAnimeListId,
    this.ongoing,
    this.licensors,
    this.videos,
    this.ratesStatusesStats,
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
      rating: json['rating'],
      description: json['description'],
      screenshots: json['screenshots'] != null
          ? List<AnimeImage>.from(
              json['screenshots'].map((x) => AnimeImage.fromJson(x)))
          : null,
      genres: json['genres'] != null
          ? List<Genre>.from(json['genres'].map((x) => Genre.fromJson(x)))
          : null,
      ratesScoresStats: json['rates_scores_stats'] != null
          ? List<ScoreStat>.from(
              json['rates_scores_stats'].map((x) => ScoreStat.fromJson(x)))
          : null,
      myAnimeListId: json['myanimelist_id'],
      ongoing: json['ongoing'],
      licensors: json['licensors'] != null
          ? List<String>.from(json['licensors'])
          : null,
      videos: json['videos'] != null
          ? List<AnimeVideo>.from(
              json['videos'].map((x) => AnimeVideo.fromJson(x)))
          : null,
      ratesStatusesStats: json['rates_statuses_stats'] != null
          ? List<StatusStat>.from(
              json['rates_statuses_stats'].map((x) => StatusStat.fromJson(x)))
          : null,
    );
  }

  @override
  String toString() {
    return 'Anime{id: $id, name: $name, russian: $russian, image: $image, url: $url, kind: $kind, score: $score, status: $status, episodes: $episodes, episodesAired: $episodesAired, airedOn: $airedOn, releasedOn: $releasedOn} $rating $description $screenshots $genres $ratesScoresStats $myAnimeListId $ongoing $licensors $videos $ratesStatusesStats';
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
          releasedOn == other.releasedOn &&
          rating == other.rating &&
          description == other.description &&
          screenshots == other.screenshots &&
          genres == other.genres &&
          ratesScoresStats == other.ratesScoresStats &&
          myAnimeListId == other.myAnimeListId &&
          ongoing == other.ongoing &&
          licensors == other.licensors &&
          videos == other.videos &&
          ratesStatusesStats == other.ratesStatusesStats;

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
      releasedOn.hashCode ^
      rating.hashCode ^
      description.hashCode ^
      screenshots.hashCode ^
      genres.hashCode ^
      ratesScoresStats.hashCode ^
      myAnimeListId.hashCode ^
      ongoing.hashCode ^
      licensors.hashCode ^
      videos.hashCode ^
      ratesStatusesStats.hashCode;

  // Add copyWith
  Anime copyWith({
    int? id,
    String? name,
    String? russian,
    AnimeImage? image,
    String? url,
    String? kind,
    String? score,
    String? status,
    int? episodes,
    int? episodesAired,
    String? airedOn,
    String? releasedOn,
    String? rating,
    String? description,
    List<AnimeImage>? screenshots,
    List<Genre>? genres,
    List<ScoreStat>? ratesScoresStats,
    int? myAnimeListId,
    bool? ongoing,
    List<String>? licensors,
    List<AnimeVideo>? videos,
    List<StatusStat>? ratesStatusesStats,
  }) {
    return Anime(
      id: id ?? this.id,
      name: name ?? this.name,
      russian: russian ?? this.russian,
      image: image ?? this.image,
      url: url ?? this.url,
      kind: kind ?? this.kind,
      score: score ?? this.score,
      status: status ?? this.status,
      episodes: episodes ?? this.episodes,
      episodesAired: episodesAired ?? this.episodesAired,
      airedOn: airedOn ?? this.airedOn,
      releasedOn: releasedOn ?? this.releasedOn,
      rating: rating ?? this.rating,
      description: description ?? this.description,
      screenshots: screenshots ?? this.screenshots,
      genres: genres ?? this.genres,
      ratesScoresStats: ratesScoresStats ?? this.ratesScoresStats,
      myAnimeListId: myAnimeListId ?? this.myAnimeListId,
      ongoing: ongoing ?? this.ongoing,
      licensors: licensors ?? this.licensors,
      videos: videos ?? this.videos,
      ratesStatusesStats: ratesStatusesStats ?? this.ratesStatusesStats,
    );
  }
}
