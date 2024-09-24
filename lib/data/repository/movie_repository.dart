import '../../core/network/api_service.dart';
import '../models/movie_model.dart';

class MovieRepository {
  final ApiService apiService;

  MovieRepository({required this.apiService});

  Future<List<Movie>> getMovies(String query) async {
    return await apiService.fetchMovies(query);
  }
}
