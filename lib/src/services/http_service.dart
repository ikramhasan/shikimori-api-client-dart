import 'dart:convert';
import 'dart:io';

class HttpService {
  final String baseUrl = 'https://shikimori.one/api';

  Future<String> get(String endpoint) async {
    var uri = Uri.parse(baseUrl + endpoint);
    var request = await HttpClient().getUrl(uri);
    var response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      return await response.transform(utf8.decoder).join();
    } else {
      throw HttpException('Error: ${response.statusCode}', uri: uri);
    }
  }
}
