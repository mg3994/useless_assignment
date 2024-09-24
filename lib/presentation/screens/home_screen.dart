import 'package:flutter/material.dart';

import '../../core/network/api_service.dart';
import '../../data/models/movie_model.dart';
import '../widgets/movie_item.dart';
import 'search_screen.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => SearchScreen()));
            },
          )
        ],
      ),
      body: FutureBuilder<List<Movie>>(
        future: apiService.fetchMovies('all'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading movies'));
          }

          final movies = snapshot.data!;
          return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MovieItem(movie: movies[index], onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(movie: movies[index]),
                  ),
                );
              });
            },
          );
        },
      ),
    );
  }
}
