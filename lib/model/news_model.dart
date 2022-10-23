class NewsModel {
  late String status;
  late List<Articles> articles;

  NewsModel({required this.status, required this.articles});

  NewsModel.fromjson(Map<String, dynamic> json) {
    status = json['status'];
    articles = <Articles>[];
    json['articles'].forEach((v) {
      articles.add(Articles.fromJson(v));
    });
  }
}

class Articles {
  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String publishedAt;

  Articles({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
  });

  Articles.fromJson(Map<String, dynamic> json) {
    author = json['author'] ?? '';
    title = json['title'] ?? '';
    description = json['description'] ?? '';
    url = json['url'] ??
        '"https://sa.investing.com/news/economic-indicators/article-2332857';
    urlToImage = json['urlToImage'] ??
        '"https://i-invdn-com.investing.com/news/LYNXNPEC140PY_L.jpg';
    publishedAt = json['publishedAt'] ?? '2022-10-20T22:01:22Z';
  }
}
