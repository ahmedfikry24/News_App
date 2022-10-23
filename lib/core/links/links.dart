class AppLink {
  ///base
  static const String baseUrl = 'https://newsapi.org/v2/top-headlines';

  static const String apiKey = 'apikey=50be2066a19f42f8a8a0febf70e90a4a';
  //65f7f556ec76449fa7dc7c0069f040ca
  //50be2066a19f42f8a8a0febf70e90a4a

  ///screens
  static const String businessUrl =
      '$baseUrl?country=eg&category=business&$apiKey';

  static const String scienceUrl =
      '$baseUrl?country=eg&category=science&$apiKey';

  static const String sportsUrl = '$baseUrl?country=eg&category=sports&$apiKey';

  ///images
  static const String serverFailure = 'assets/images/server.json';
  static const String offlineFailure = 'assets/images/offline.json';
  static const String loading = 'assets/images/loading.json';
}
