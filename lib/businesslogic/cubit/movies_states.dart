part of 'movies_cubit.dart';

sealed class MovieState extends Equatable {
  const MovieState();

  @override
  List<Object> get props => [];
}

final class MovieInitial extends MovieState {}

final class MoviesLoaded extends MovieState {
  final List<MoviesModel> movies;
  const MoviesLoaded(this.movies);

  @override
  List<Object> get props => [movies];
}
