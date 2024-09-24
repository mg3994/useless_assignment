// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'movie.dart';

// class ApiService with ChangeNotifier {
//   List<Movie> movies = [];
//   List<Movie> searchedMovies = [];
//   bool isLoading = false;

//   Future<List<Movie>> fetchMovies() async {
//     isLoading = true;
//     notifyListeners();

//     final response =
//         await http.get(Uri.parse('https://api.tvmaze.com/search/shows?q=all'));
//     final List<dynamic> data = json.decode(response.body);

//     movies = data.map((e) => Movie.fromJson(e)).toList();
//     isLoading = false;
//     notifyListeners();
//     return movies;
//   }

//   Future<List<Movie>> searchMovies(String query) async {
//     isLoading = true;
//     notifyListeners();

//     final response = await http
//         .get(Uri.parse('https://api.tvmaze.com/search/shows?q=$query'));
//     final List<dynamic> data = json.decode(response.body);

//     searchedMovies = data.map((e) => Movie.fromJson(e)).toList();
//     isLoading = false;
//     notifyListeners();
//     return searchedMovies;
//   }
// }
