import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/api/api_constants.dart';
import 'package:news_app/model/newsResponse.dart';

import '../model/SourceResponse.dart';

class ApiManager {
  static Future<SourceResponse?> getSources(String categoryId) async {
    /*
    https://newsapi.org/v2/top-headlines/sources?apiKey=ef3323a570de414b87ed541b99cbd54f
    */
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourceApi,
        {
          'apiKey': 'ef3323a570de414b87ed541b99cbd54f',
          'category':categoryId

        });
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return SourceResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  static Future<NewsResponse?> getNewsBySourceId(String sourceId) async {
    /*
    https://newsapi.org/v2/everything?q=bitcoin&apiKey=ef3323a570de414b87ed541b99cbd54f
    */
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.newsApi,
        {'apiKey': 'ef3323a570de414b87ed541b99cbd54f', 'sources': sourceId});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return NewsResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
