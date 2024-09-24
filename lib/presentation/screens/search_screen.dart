import 'package:flutter/material.dart';

import '../../core/network/api_service.dart';
import '../../data/models/movie_model.dart';
import '../widgets/movie_item.dart';
import 'details_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ApiService apiService = ApiService();
  List<Movie> _movies = [];

  void _searchMovies() async {
    if (_searchController.text.isNotEmpty) {
      List<Movie> movies = await apiService.fetchMovies(_searchController.text);
      setState(() {
        _movies = movies;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(hintText: 'Search movies'),
          onSubmitted: (_) => _searchMovies(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _searchMovies,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _movies.length,
        itemBuilder: (context, index) {
          return MovieItem(movie: _movies[index], onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsScreen(movie: _movies[index]),
              ),
            );
          });
        },
      ),
    );
  }
}
