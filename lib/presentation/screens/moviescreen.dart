import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghibli/businesslogic/cubit/movies_cubit.dart';
import 'package:ghibli/constants.dart/colors.dart';
import 'package:ghibli/data/models/movies_model.dart';
import 'package:ghibli/presentation/widgets/movie_item.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  late List<MoviesModel> allMovies;
  @override
  void initState() {
    super.initState();
    allMovies = BlocProvider.of<MoviesCubit>(context).getAllMovies();
    // context.read<MoviesCubit>().getAllMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBrowny,
      appBar: AppBar(
        backgroundColor: AppColors.lightBrowny,
        title: Image(
          image: AssetImage("assets/images/ghiblilogo.png"),
          height: 50,
        ),
        centerTitle: true,
      ),
      body: blocWiget(),
    );
  }

  Widget blocWiget() {
    return BlocBuilder<MoviesCubit, MovieState>(
      builder: (context, state) {
        if (state is MoviesLoaded) {
          allMovies = state.movies;
          return moviesElements(movies: allMovies);
        } else {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.browny),
          );
        }
      },
    );
  }

  Widget moviesElements({required List<MoviesModel> movies}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 5),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.61,
          crossAxisSpacing: 0.1,
          mainAxisSpacing: 10.0,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieItem(movie: movies[index]);
        },
      ),
    );
  }
}
