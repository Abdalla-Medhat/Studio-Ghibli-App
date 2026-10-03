part of 'movies_cubit.dart';

sealed class MovieState extends Equatable {
  const MovieState();

  @override
  List<Object> get props => [];
}

final class MovieInitial extends MovieState {}

final class MovieLoaded extends MovieState {
  final List<MoviesModel> movies;
  const MovieLoaded(this.movies);

  @override
  List<Object> get props => [movies];
}
