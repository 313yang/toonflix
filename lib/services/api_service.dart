import "dart:convert";

import "package:http/http.dart" as http;
import "package:toonflix/models/webtoon_model.dart";

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse("$baseUrl/$today");
    final resp = await http.get(url);
    if (resp.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(resp.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
