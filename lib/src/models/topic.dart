import 'package:shikimori_api/src/models/anime_image.dart';

class Forum {
  final int id;
  final int position;
  final String name;
  final String permalink;
  final String url;

  Forum({
    required this.id,
    required this.position,
    required this.name,
    required this.permalink,
    required this.url,
  });

  factory Forum.fromJson(Map<String, dynamic> json) {
    return Forum(
      id: json['id'],
      position: json['position'],
      name: json['name'],
      permalink: json['permalink'],
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'Forum{id: $id, position: $position, name: $name, permalink: $permalink, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Forum &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          position == other.position &&
          name == other.name &&
          permalink == other.permalink &&
          url == other.url;

  @override
  int get hashCode =>
      id.hashCode ^
      position.hashCode ^
      name.hashCode ^
      permalink.hashCode ^
      url.hashCode;
}

class Linked {
  final int id;
  final String name;
  final String russian;
  final AnimeImage image;
  final String url;
  final String kind;
  final String score;
  final String status;
  final int episodes;
  final int episodesAired;
  final String? airedOn;
  final String? releasedOn;

  Linked({
    required this.id,
    required this.name,
    required this.russian,
    required this.image,
    required this.url,
    required this.kind,
    required this.score,
    required this.status,
    required this.episodes,
    required this.episodesAired,
    required this.airedOn,
    required this.releasedOn,
  });

  factory Linked.fromJson(Map<String, dynamic> json) {
    return Linked(
      id: json['id'],
      name: json['name'],
      russian: json['russian'],
      image: AnimeImage.fromJson(json['image']),
      url: json['url'],
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
    return 'Linked{id: $id, name: $name, russian: $russian, image: $image, url: $url, kind: $kind, score: $score, status: $status, episodes: $episodes, episodesAired: $episodesAired, airedOn: $airedOn, releasedOn: $releasedOn}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Linked &&
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

class User {
  final int id;
  final String nickname;
  final String avatar;
  final AnimeImage image;
  final String lastOnlineAt;
  final String url;

  User({
    required this.id,
    required this.nickname,
    required this.avatar,
    required this.image,
    required this.lastOnlineAt,
    required this.url,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      nickname: json['nickname'],
      avatar: json['avatar'],
      image: AnimeImage.fromJson(json['image']),
      lastOnlineAt: json['last_online_at'],
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'User{id: $id, nickname: $nickname, avatar: $avatar, image: $image, lastOnlineAt: $lastOnlineAt, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          nickname == other.nickname &&
          avatar == other.avatar &&
          image == other.image &&
          lastOnlineAt == other.lastOnlineAt &&
          url == other.url;

  @override
  int get hashCode =>
      id.hashCode ^
      nickname.hashCode ^
      avatar.hashCode ^
      image.hashCode ^
      lastOnlineAt.hashCode ^
      url.hashCode;
}

class Topic {
  final int id;
  final String topicTitle;
  final String body;
  final String htmlBody;
  final String htmlFooter;
  final String createdAt;
  final int commentsCount;
  final Forum forum;
  final User user;
  final String type;
  final int linkedId;
  final String linkedType;
  final Linked linked;
  final bool viewed;
  final dynamic lastCommentViewed;
  final dynamic event;
  final dynamic episode;

  Topic({
    required this.id,
    required this.topicTitle,
    required this.body,
    required this.htmlBody,
    required this.htmlFooter,
    required this.createdAt,
    required this.commentsCount,
    required this.forum,
    required this.user,
    required this.type,
    required this.linkedId,
    required this.linkedType,
    required this.linked,
    required this.viewed,
    required this.lastCommentViewed,
    required this.event,
    required this.episode,
  });

  factory Topic.fromJson(Map<String, dynamic> json) {
    return Topic(
      id: json['id'],
      topicTitle: json['topic_title'],
      body: json['body'],
      htmlBody: json['html_body'],
      htmlFooter: json['html_footer'],
      createdAt: json['created_at'],
      commentsCount: json['comments_count'],
      forum: Forum.fromJson(json['forum']),
      user: User.fromJson(json['user']),
      type: json['type'],
      linkedId: json['linked_id'],
      linkedType: json['linked_type'],
      linked: Linked.fromJson(json['linked']),
      viewed: json['viewed'],
      lastCommentViewed: json['last_comment_viewed'],
      event: json['event'],
      episode: json['episode'],
    );
  }

  @override
  String toString() {
    return 'Topic{id: $id, topicTitle: $topicTitle, body: $body, htmlBody: $htmlBody, htmlFooter: $htmlFooter, createdAt: $createdAt, commentsCount: $commentsCount, forum: $forum, user: $user, type: $type, linkedId: $linkedId, linkedType: $linkedType, linked: $linked, viewed: $viewed, lastCommentViewed: $lastCommentViewed, event: $event, episode: $episode}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Topic &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          topicTitle == other.topicTitle &&
          body == other.body &&
          htmlBody == other.htmlBody &&
          htmlFooter == other.htmlFooter &&
          createdAt == other.createdAt &&
          commentsCount == other.commentsCount &&
          forum == other.forum &&
          user == other.user &&
          type == other.type &&
          linkedId == other.linkedId &&
          linkedType == other.linkedType &&
          linked == other.linked &&
          viewed == other.viewed &&
          lastCommentViewed == other.lastCommentViewed &&
          event == other.event &&
          episode == other.episode;

  @override
  int get hashCode =>
      id.hashCode ^
      topicTitle.hashCode ^
      body.hashCode ^
      htmlBody.hashCode ^
      htmlFooter.hashCode ^
      createdAt.hashCode ^
      commentsCount.hashCode ^
      forum.hashCode ^
      user.hashCode ^
      type.hashCode ^
      linkedId.hashCode ^
      linkedType.hashCode ^
      linked.hashCode ^
      viewed.hashCode ^
      lastCommentViewed.hashCode ^
      event.hashCode ^
      episode.hashCode;
}
