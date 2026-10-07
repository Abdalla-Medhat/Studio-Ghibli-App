import 'package:flutter/material.dart';
import 'package:ghibli/businesslogic/cubit/movies_cubit.dart';
import 'package:ghibli/constants.dart/strings.dart';
import 'package:ghibli/data/api_services/movies_api.dart';
import 'package:ghibli/data/repository/movies_repo.dart';
import 'package:ghibli/presentation/screens/moviedetails.dart';
import 'package:ghibli/presentation/screens/moviescreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late MoviesRepo moviesRepo;
  late MoviesCubit moviesCubit;
  AppRouter() {
    moviesRepo = MoviesRepo(MoviesApi());
    moviesCubit = MoviesCubit(moviesRepo);
  }
  Route? generationRout(RouteSettings stettings) {
    switch (stettings.name) {
      case movieScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => moviesCubit,
            child: const MovieScreen(),
          ),
        );
      case movieDetailsScreen:
        return MaterialPageRoute(builder: (_) => const MovieDetails());
    }
  }
}
