import 'package:ghibli/data/api_services/movies_api.dart';
import 'package:ghibli/data/models/movies_model.dart';

class MoviesRepo {
  final MoviesApi moviesApi;
  MoviesRepo(this.moviesApi);
  Future<List<MoviesModel>> getMovies() async {
    final movies = await moviesApi.getMovies();
    return movies.map((movie) => MoviesModel.fromJson(movie)).toList();
  }
}
