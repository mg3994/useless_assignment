class ApiConstants {
  static const String baseUrl = 'https://api.tvmaze.com/search/shows?q=';
  static String getShows(String query) => '$baseUrl$query';
}
