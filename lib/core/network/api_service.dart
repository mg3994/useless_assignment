import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../data/models/movie_model.dart';
import '../constants/api_constants.dart';

class ApiService {
  Future<List<Movie>> fetchMovies(String? query) async {
    // Encode the query string to make it URL friendly
    final encodedQuery =
        query == null ? 'all' : Uri.encodeQueryComponent(query);
    final response =
        await http.get(Uri.parse(ApiConstants.getShows(encodedQuery)));
    if (response.statusCode == 200) {
      final List jsonData = json.decode(response.body);

      final data = jsonData.map((data) => Movie.fromMap(data)).toList();

      return data;
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
