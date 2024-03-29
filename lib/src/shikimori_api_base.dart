import 'package:shikimori_api/src/models/anime.dart';
import 'package:shikimori_api/src/models/anime_image.dart';
import 'package:shikimori_api/src/models/anime_video.dart';
import 'package:shikimori_api/src/models/character.dart';
import 'package:shikimori_api/src/models/external_link.dart';
import 'package:shikimori_api/src/models/role.dart';
import 'package:shikimori_api/src/models/topic.dart';
import 'package:shikimori_api/src/repositories/shikimori_anime_repository.dart';
import 'package:shikimori_api/src/services/http_service.dart';

/// The main class for interacting with the Shikimori API
class ShikimoriApi {
  static final ShikimoriApi _singleton = ShikimoriApi._internal();

  late ShikimoriAnimeRepositoryImpl _repository;

  ShikimoriApi._internal() {
    final HttpService httpService = HttpService();
    _repository = ShikimoriAnimeRepositoryImpl(httpService);
  }

  factory ShikimoriApi() {
    return _singleton;
  }

  /// Returns a [List] of popular [Anime]s,
  /// [limit] is the number of anime to return
  /// throws [HttpException] if an error occurs
  Future<List<Anime>> getPopularAnimeList({
    int limit = 50,
  }) async {
    try {
      return await _repository.getPopularAnimeList(limit: limit);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns an [Anime] by its [id]
  /// throws [HttpException] if an error occurs
  Future<Anime> getAnimeById({
    required int id,
  }) async {
    try {
      return await _repository.getAnimeById(id: id);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [List] of [Anime]s similar to the one with the given [id]
  /// throws [HttpException] if an error occurs
  Future<List<Anime>> getSimilarAnimeRecommendations({
    required int id,
  }) async {
    try {
      return await _repository.getSimilarAnime(id: id);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [List] of [AnimeImage]s for the anime with the given [id]
  /// throws [HttpException] if an error occurs
  Future<List<AnimeImage>> getAnimeScreenshots({
    required int id,
  }) async {
    try {
      return await _repository.getAnimeScreenshots(id: id);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [List] of [ExternalLink]s for the anime with the given [id]
  /// throws [HttpException] if an error occurs
  Future<List<ExternalLink>> getAnimeExternalLinks({
    required int id,
  }) async {
    try {
      return await _repository.getAnimeExternalLinks(id: id);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [List] of [Anime]s that match the given [query]
  /// throws [HttpException] if an error occurs
  Future<List<Anime>> searchAnime({
    required String query,
  }) async {
    try {
      return await _repository.searchAnime(query: query);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [List] of recent [Anime]s,
  /// [limit] is the number of anime to return
  /// throws [HttpException] if an error occurs
  Future<List<Anime>> getRecentAnimeList({
    int limit = 50,
  }) async {
    try {
      return await _repository.getRecentAnimeList(limit: limit);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [List] of top rated [Anime]s,
  /// [limit] is the number of anime to return
  /// throws [HttpException] if an error occurs
  Future<List<Anime>> getTopRatedAnimeList({
    int limit = 50,
  }) async {
    try {
      return await _repository.getTopRatedAnimeList(limit: limit);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [List] of [Topic]s for the anime with the given [id]
  /// throws [HttpException] if an error occurs
  Future<List<Topic>> getAnimeTopics({
    required int id,
  }) async {
    try {
      return await _repository.getAnimeTopics(id: id);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [List] of [AnimeVideo]s for the anime with the given [id]
  /// throws [HttpException] if an error occurs
  Future<List<AnimeVideo>> getAnimeVideos({
    required int id,
  }) async {
    try {
      return await _repository.getAnimeVideos(id: id);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [List] of [Role]s for the anime with the given [id]
  /// throws [HttpException] if an error occurs
  Future<List<Role>> getAnimeRoles({
    required int id,
  }) async {
    try {
      return await _repository.getAnimeRoles(id: id);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [Character] by its [id]
  /// throws [HttpException] if an error occurs
  Future<Character> getCharacterById({
    required int id,
  }) async {
    try {
      return await _repository.getCharacterById(id: id);
    } catch (e) {
      rethrow;
    }
  }
}
