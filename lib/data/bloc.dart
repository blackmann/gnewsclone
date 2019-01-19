import 'package:gnewsclone/data/models.dart';
import 'package:http/http.dart' show Client;
import 'dart:async';
import 'dart:convert';


String apiKey = "31b0c3179f46467a92b15751618aca39";

class Bloc {
  Bloc(this.sources);

  List<String> sources;
  Client client = Client();
  List<Article> tempArticles = [];
  StreamController<List<Article>> articles = StreamController();

  fetchNews() {
    print("Fetching");
    String _sources = sources.join(",");
    String _endpoint =
      "https://newsapi.org/v2/everything?q=phones&apiKey=$apiKey&pageSize=5";

    print(_endpoint);
    
    client.get(_endpoint).then(
      (response) {
        if (response.statusCode == 200) {
          Map<String, dynamic> _jsonData = jsonDecode(response.body);
          List<dynamic> _articles = _jsonData['articles'];

          tempArticles.addAll(_articles.map((f) {
            return Article.fromJson(f);
          }).toList());

          articles.add(tempArticles);
        }
      }
    ).catchError(
      (error) {

      }
    );

  }

  dispose() {
    articles.close();
  }
}