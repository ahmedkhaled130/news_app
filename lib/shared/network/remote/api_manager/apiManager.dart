import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/models/NewsResponse.dart';
import 'package:news/models/SourcesResoponse.dart';

import '../../../components/constant.dart';

class ApiManager {
  static Future<SourcesResoponse> getSources(String catId) async {
    Uri url = Uri.https(BASE_URL, "/v2/top-headlines/sources",
        {"apiKey": API_KEY, "category": catId});
    http.get(url);
    http.Response response = await http.get(url);

    var jsonData = jsonDecode(response.body);
    SourcesResoponse sourcesResoponse = SourcesResoponse.fromJson(jsonData);
    return sourcesResoponse;
  }

  static Future<NewsResponse> getNems(String sourceId) async {
    Uri url = Uri.https(
      BASE_URL,
      "/v2/everything",
      {"apiKey": API_KEY, "sources": sourceId},
    );
    http.get(url);
    http.Response response = await http.get(url);

    var jsonData = jsonDecode(response.body);
    NewsResponse newsResponse = NewsResponse.fromJson(jsonData);
    return newsResponse;
  }
}
