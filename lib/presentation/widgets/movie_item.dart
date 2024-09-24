import 'package:flutter/material.dart';

import '../../data/models/movie_model.dart' hide Image;

class MovieItem extends StatelessWidget {
  final Movie movie;
  final VoidCallback onTap;

  MovieItem({required this.movie, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(movie.show?.image?.medium ?? ''),
      title: Text(movie.show!.name!),
      subtitle: Text(movie.show!.language!.name),
      onTap: onTap,
    );
  }
}
