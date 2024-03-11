// {
//     "id": 3,
//     "kind": "wikipedia",
//     "url": "http://en.wikipedia.org",
//     "source": "shikimori",
//     "entry_id": 49,
//     "entry_type": "Anime",
//     "created_at": "2022-11-26T17:19:33.393+03:00",
//     "updated_at": "2022-11-26T17:19:33.393+03:00",
//     "imported_at": null
//   },

class ExternalLink {
  final int? id;
  final String kind;
  final String url;
  final String source;
  final int entryId;
  final String entryType;
  final String? createdAt;
  final String? updatedAt;
  final String? importedAt;

  ExternalLink({
    this.id,
    required this.kind,
    required this.url,
    required this.source,
    required this.entryId,
    required this.entryType,
    this.createdAt,
    this.updatedAt,
    this.importedAt,
  });

  factory ExternalLink.fromJson(Map<String, dynamic> json) {
    return ExternalLink(
      id: json['id'],
      kind: json['kind'],
      url: json['url'],
      source: json['source'],
      entryId: json['entry_id'],
      entryType: json['entry_type'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      importedAt: json['imported_at'],
    );
  }

  @override
  String toString() {
    return 'ExternalLink{id: $id, kind: $kind, url: $url, source: $source, entryId: $entryId, entryType: $entryType, createdAt: $createdAt, updatedAt: $updatedAt, importedAt: $importedAt}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExternalLink &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          kind == other.kind &&
          url == other.url &&
          source == other.source &&
          entryId == other.entryId &&
          entryType == other.entryType &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          importedAt == other.importedAt;

  @override
  int get hashCode =>
      id.hashCode ^
      kind.hashCode ^
      url.hashCode ^
      source.hashCode ^
      entryId.hashCode ^
      entryType.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      importedAt.hashCode;
}
