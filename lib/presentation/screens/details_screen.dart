import 'package:flutter/material.dart';

import '../../data/models/movie_model.dart' hide Image;

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  DetailsScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.show!.name!),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(movie.show!.image?.original ?? ''),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                movie.show!.summary!,
                style: TextStyle(fontSize: 18),
              ),
            ),
            // Add more details as necessary
          ],
        ),
      ),
    );
  }
}
