![Banner](https://raw.githubusercontent.com/ikramhasan/shikimori-api-client-dart/main/doc/banner.png)

Pure dart, ultra-lite package to interact with the [Shikimori Anime API](https://shikimori.one/api/doc/1.0)

## Getting started

Install the package by running this command:

```bash
dart pub add shikimori_api
```

## Usage

```dart
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
```

## Objects

### Anime

| Parameter     | Type         | Description                   |
| ------------- | ------------ | ----------------------------- |
| id            | int          | Anime ID                      |
| name          | String       | Anime name                    |
| russian       | String?      | Anime Russian name (Nullable) |
| image         | `AnimeImage` | Anime image details           |
| url           | String       | Anime URL                     |
| kind          | String       | Kind of object                |
| score         | String       | Anime score                   |
| status        | String       | Anime status                  |
| episodes      | int          | Total episodes                |
| episodesAired | int          | Episodes aired                |
| airedOn       | String       | Aired date                    |
| releasedOn    | String?      | Released date (Nullable)      |

### AnimeImage

| Parameter | Type   | Description            |
| --------- | ------ | ---------------------- |
| original  | String | Original image URL     |
| preview   | String | Preview image URL      |
| x96       | String | Image URL (96x96 size) |
| x48       | String | Image URL (48x48 size) |

### Character

| Parameter         | Type          | Description                              |
| ----------------- | ------------- | ---------------------------------------- |
| id                | int           | Character ID                             |
| name              | String        | Character name                           |
| russian           | String?       | Character Russian name (Nullable)        |
| url               | String        | Character URL                            |
| altname           | String?       | Alternative name (Nullable)              |
| japanese          | String        | Japanese name                            |
| description       | String?       | Description of the object (Nullable)     |
| descriptionHtml   | String        | HTML-formatted description of the object |
| descriptionSource | String?       | Description source (Nullable)            |
| favoured          | bool          | Whether the object is favored            |
| threadId          | int           | Thread ID related to the object          |
| topicId           | int           | Topic ID related to the object           |
| updatedAt         | String        | Last update timestamp                    |
| seyu              | List<`Seyu`>  | List of voice actors                     |
| image             | `AnimeImage`  | Image details of the object              |
| animes            | List<`Anime`> | List of related anime                    |

### Role

| Parameter    | Type         | Description                 |
| ------------ | ------------ | --------------------------- |
| roles        | List<String> | List of roles               |
| rolesRussian | List<String> | List of Russian roles       |
| character    | `Character`? | Character object (Nullable) |
| person       | `Person`?    | Person object (Nullable)    |

### Person

| Parameter | Type         | Description          |
| --------- | ------------ | -------------------- |
| id        | int          | Person ID            |
| name      | String       | Person name          |
| russian   | String       | Person Russian name  |
| image     | `AnimeImage` | Person image details |
| url       | String       | Person URL           |

### Seyu

| Parameter | Type         | Description        |
| --------- | ------------ | ------------------ |
| id        | int          | Seyu ID            |
| name      | String       | Seyu name          |
| russian   | String       | Seyu Russian name  |
| image     | `AnimeImage` | Seyu image details |
| url       | String       | Seyu URL           |

### Topic

| Parameter         | Type     | Description                  |
| ----------------- | -------- | ---------------------------- |
| id                | int      | Topic ID                     |
| topicTitle        | String   | Title of the topic           |
| body              | String   | Body of the topic            |
| htmlBody          | String   | HTML body of the topic       |
| htmlFooter        | String   | HTML footer                  |
| createdAt         | String   | Creation timestamp           |
| commentsCount     | int      | Count of comments            |
| forum             | `Forum`  | Forum object                 |
| user              | `User`   | User object                  |
| type              | String   | Type of the object           |
| linkedId          | int      | ID of the linked object      |
| linkedType        | String   | Type of the linked object    |
| linked            | `Linked` | Linked object                |
| viewed            | bool     | Whether the topic is viewed  |
| lastCommentViewed | dynamic  | Last viewed comment          |
| event             | dynamic  | Event related to the topic   |
| episode           | dynamic  | Episode related to the topic |

### Anime Video

| Parameter | Type    | Description           |
| --------- | ------- | --------------------- |
| id        | int     | Video ID              |
| url       | String  | Video URL             |
| imageUrl  | String  | Image URL             |
| playerUrl | String  | Player URL            |
| name      | String? | Video name (Nullable) |
| kind      | String  | Kind of object        |
| hosting   | String  | Hosting platform      |

### External Link

| Parameter  | Type    | Description                   |
| ---------- | ------- | ----------------------------- |
| id         | int?    | Link ID (Nullable)            |
| kind       | String  | Kind of object                |
| url        | String  | Link URL                      |
| source     | String  | Source of the object          |
| entryId    | int     | Entry ID                      |
| entryType  | String  | Type of entry                 |
| createdAt  | String? | Creation timestamp (Nullable) |
| updatedAt  | String? | Update timestamp (Nullable)   |
| importedAt | String? | Import timestamp (Nullable)   |

## Maintainer

- [Ikram Hasan](https://github.com/ikramhasan)
