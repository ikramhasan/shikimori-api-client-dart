import 'package:shikimori_api/shikimori_api.dart';

Future<void> main() async {
  // Initialize the Shikimori API
  final api = ShikimoriApi();

  // Get a list of popular anime
  final animeList = await api.getPopularAnimeList();
  print(animeList);

  // Get an anime by its ID
  final anime = await api.getAnimeById(id: 16498);
  print(anime);

  // Get a list of anime similar to the one with the given ID
  final similarAnime = await api.getSimilarAnimeRecommendations(id: 16498);
  print(similarAnime);

  // Get a list of anime images for the anime with the given ID
  final animeScreenshots = await api.getAnimeScreenshots(id: 16498);
  print(animeScreenshots);

  // Get a list of external links for the anime with the given ID
  final externalLinks = await api.getAnimeExternalLinks(id: 16498);
  print(externalLinks);

  // Search for anime
  final searchResults = await api.searchAnime(query: 'Attack on Titan');
  print(searchResults);

  // Get a list of top-rated anime
  final topRatedAnime = await api.getTopRatedAnimeList();
  print(topRatedAnime);

  // Get a list of recent anime
  final recentAnime = await api.getRecentAnimeList();
  print(recentAnime);

  // Get a list of topics for the anime with the given ID
  final animeTopics = await api.getAnimeTopics(id: 16498);
  print(animeTopics);

  // Get a list of videos for the anime with the given ID
  final animeVideos = await api.getAnimeVideos(id: 16498);
  print(animeVideos);

  // Get a list of roles for the anime with the given ID
  final animeRoles = await api.getAnimeRoles(id: 16498);
  print(animeRoles);

  // Get a character by its ID
  final character = await api.getCharacterById(id: 1);
  print(character);
}
