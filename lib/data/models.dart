import 'package:timeago/timeago.dart' as timeago;

class Source {
  Source(this.id, this.name);

  final String id;
  final String name;

  static Source fromJson(jsonData) {
    String _id = jsonData["id"];
    String _name = jsonData["name"];
    return Source(_id, _name);
  }
}

class Article {
  
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;
  String content;

  String get timePast => timeago.format(publishedAt);

  static Article fromJson(jsonData) {
    Article _article = Article();
    _article.title = jsonData["title"];
    _article.description = jsonData["description"];
    _article.url = jsonData["url"];
    _article.urlToImage = jsonData["urlToImage"];
    _article.source = Source.fromJson(jsonData["source"]);
    _article.publishedAt = DateTime.parse(jsonData["publishedAt"]);

    return _article;
  }
}