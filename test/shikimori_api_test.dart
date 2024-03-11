import 'package:shikimori_api/shikimori_api.dart';
import 'package:shikimori_api/src/models/anime.dart';
import 'package:shikimori_api/src/models/anime_image.dart';
import 'package:shikimori_api/src/models/anime_video.dart';
import 'package:shikimori_api/src/models/external_link.dart';
import 'package:shikimori_api/src/models/role.dart';
import 'package:shikimori_api/src/models/topic.dart';
import 'package:test/test.dart';

void main() {
  group('Shikimori API', () {
    late ShikimoriApi api;

    setUp(() {
      api = ShikimoriApi();
    });

    test('should return a list of anime when getTopAnime is called', () async {
      final topAnime = await api.getPopularAnimeList();
      print(topAnime.first.toString());
      expect(topAnime, isA<List<Anime>>());
    });

    test('should return an anime when getAnimeById is called', () async {
      final id = 16498; // Attack on Titan
      final anime = await api.getAnimeById(id: id);
      print(anime.toString());
      expect(anime, isA<Anime>());
    });

    test(
        'should return a list of anime when getSimilarAnimeRecommendations is called',
        () async {
      final id = 16498; // Attack on Titan
      final similarAnime = await api.getSimilarAnimeRecommendations(id: id);
      print(similarAnime.first.toString());
      expect(similarAnime, isA<List<Anime>>());
    });

    test(
        'should return a list of anime images when getAnimeScreenshots is called',
        () async {
      final id = 16498; // Attack on Titan
      final animeScreenshots = await api.getAnimeScreenshots(id: id);
      print(animeScreenshots.first.toString());
      expect(animeScreenshots, isA<List<AnimeImage>>());
    });

    test(
        'should return a list of external links when getAnimeExternalLinks is called',
        () async {
      final id = 16498; // Attack on Titan
      final externalLinks = await api.getAnimeExternalLinks(id: id);
      print(externalLinks.first.toString());
      expect(externalLinks, isA<List<ExternalLink>>());
    });

    test('should return a list of anime when searchAnime is called', () async {
      final query = 'Attack on Titan';
      final searchResults = await api.searchAnime(query: query);
      print(searchResults.first.toString());
      expect(searchResults, isA<List<Anime>>());
    });

    test('should return a list of anime when getRecentAnimeList is called',
        () async {
      final recentAnime = await api.getRecentAnimeList();
      print(recentAnime.first.toString());
      expect(recentAnime, isA<List<Anime>>());
    });

    test('should return a list of anime when getTopRatedAnimeList is called',
        () async {
      final topRatedAnime = await api.getTopRatedAnimeList();
      print(topRatedAnime.first.toString());
      expect(topRatedAnime, isA<List<Anime>>());
    });

    test('should return a list of topics when getAnimeTopics is called',
        () async {
      final id = 16498; // Attack on Titan
      final topics = await api.getAnimeTopics(id: id);
      print(topics.first.toString());
      expect(topics, isA<List<Topic>>());
    });

    test('should return a list of videos when getAnimeVideos is called',
        () async {
      final id = 16498; // Attack on Titan
      final videos = await api.getAnimeVideos(id: id);
      print(videos.first.toString());
      expect(videos, isA<List<AnimeVideo>>());
    });

    test('should return a list of roles when getAnimeRoles is called',
        () async {
      final id = 16498; // Attack on Titan
      final roles = await api.getAnimeRoles(id: id);
      print(roles.first.toString());
      expect(roles, isA<List<Role>>());
    });

    test('should return a character when getCharacterByID is called', () async {
      final id = 40881; // Mikasa Ackerman
      final character = await api.getCharacterById(id: id);
      print(character.toString());
      expect(character, isA<Character>());
    });
  });
}
