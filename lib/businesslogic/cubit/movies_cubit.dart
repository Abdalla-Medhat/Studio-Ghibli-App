import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ghibli/data/models/movies_model.dart';
import 'package:ghibli/data/repository/movies_repo.dart';

part 'movies_states.dart';

class MoviesCubit extends Cubit<MovieState> {
  final MoviesRepo moviesRepo;
  MoviesCubit(this.moviesRepo) : super(MovieInitial());
  late List<MoviesModel> movies;
  List<MoviesModel> getAllMovies() {
    moviesRepo.getMovies().then((movies) {
      emit(MovieLoaded(movies));
      this.movies = movies;
    });
    return movies;
  }
}
