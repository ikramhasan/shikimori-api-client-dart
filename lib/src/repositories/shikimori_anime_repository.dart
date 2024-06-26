import 'dart:convert';
import 'package:shikimori_api/shikimori_api.dart';
import 'package:shikimori_api/src/services/http_service.dart';
import 'package:translator/translator.dart';

abstract interface class ShikimoriAnimeRepository {
  Future<List<Anime>> getPopularAnimeList({required int limit});
  Future<List<Anime>> getRecentAnimeList({required int limit});
  Future<List<Anime>> getTopRatedAnimeList({required int limit});

  Future<Anime> getAnimeById({required int id});

  Future<List<Anime>> getSimilarAnime({required int id});

  Future<List<AnimeImage>> getAnimeScreenshots({required int id});

  Future<List<ExternalLink>> getAnimeExternalLinks({required int id});

  Future<List<Anime>> searchAnime({required String query});

  Future<List<Topic>> getAnimeTopics({required int id});

  Future<List<AnimeVideo>> getAnimeVideos({required int id});

  Future<List<Role>> getAnimeRoles({required int id});

  Future<Character> getCharacterById({required int id});
}

class ShikimoriAnimeRepositoryImpl implements ShikimoriAnimeRepository {
  final HttpService _httpService;

  ShikimoriAnimeRepositoryImpl(this._httpService);

  @override
  Future<List<Anime>> getPopularAnimeList({required int limit}) async {
    var response =
        await _httpService.get('/animes?limit=$limit&order=popularity');
    var json = jsonDecode(response);
    return (json as List).map((e) => Anime.fromJson(e)).toList().toList();
  }

  @override
  Future<Anime> getAnimeById({required int id}) async {
    final translator = GoogleTranslator();
    final response = await _httpService.get('/animes/$id');
    final json = jsonDecode(response);
    final anime = Anime.fromJson(json);
    if (anime.description != null) {
      final translatedDescription = await translator.translate(
        anime.description!,
        from: 'ru',
        to: 'en',
      );

      return anime.copyWith(description: translatedDescription.text);
    }

    return anime;
  }

  @override
  Future<List<Anime>> getSimilarAnime({required int id}) async {
    final response = await _httpService.get('/animes/$id/similar');
    final json = jsonDecode(response);
    return (json as List).map((e) => Anime.fromJson(e)).toList().toList();
  }

  @override
  Future<List<AnimeImage>> getAnimeScreenshots({required int id}) async {
    final response = await _httpService.get('/animes/$id/screenshots');
    final json = jsonDecode(response);
    return (json as List).map((e) => AnimeImage.fromJson(e)).toList().toList();
  }

  @override
  Future<List<ExternalLink>> getAnimeExternalLinks({required int id}) async {
    final response = await _httpService.get('/animes/$id/external_links');
    final json = jsonDecode(response);
    return (json as List)
        .map((e) => ExternalLink.fromJson(e))
        .toList()
        .toList();
  }

  @override
  Future<List<Anime>> searchAnime({required String query}) async {
    final response = await _httpService.get('/animes?search=$query');
    final json = jsonDecode(response);
    return (json as List).map((e) => Anime.fromJson(e)).toList().toList();
  }

  @override
  Future<List<Anime>> getRecentAnimeList({required int limit}) async {
    final response =
        await _httpService.get('/animes?limit=$limit&order=aired_on');
    final json = jsonDecode(response);
    return (json as List).map((e) => Anime.fromJson(e)).toList().toList();
  }

  @override
  Future<List<Anime>> getTopRatedAnimeList({required int limit}) async {
    final response =
        await _httpService.get('/animes?limit=$limit&order=ranked');
    final json = jsonDecode(response);
    return (json as List).map((e) => Anime.fromJson(e)).toList().toList();
  }

  @override
  Future<List<Topic>> getAnimeTopics({required int id}) async {
    final response = await _httpService.get('/animes/$id/topics');
    final json = jsonDecode(response);
    return (json as List).map((e) => Topic.fromJson(e)).toList().toList();
  }

  @override
  Future<List<AnimeVideo>> getAnimeVideos({required int id}) async {
    final response = await _httpService.get('/animes/$id/videos');
    final json = jsonDecode(response);
    return (json as List).map((e) => AnimeVideo.fromJson(e)).toList().toList();
  }

  @override
  Future<List<Role>> getAnimeRoles({required int id}) async {
    final response = await _httpService.get('/animes/$id/roles');
    final json = jsonDecode(response);
    return (json as List).map((e) => Role.fromJson(e)).toList().toList();
  }

  @override
  Future<Character> getCharacterById({required int id}) async {
    final response = await _httpService.get('/characters/$id');
    final json = jsonDecode(response);
    return Character.fromJson(json);
  }
}
