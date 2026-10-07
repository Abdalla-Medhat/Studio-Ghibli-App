import 'package:flutter/material.dart';
import 'package:ghibli/constants.dart/colors.dart';
import 'package:ghibli/data/models/movies_model.dart';
import 'package:lottie/lottie.dart';

class MovieItem extends StatelessWidget {
  final MoviesModel movie;
  const MovieItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: movie.image.isEmpty
              ? Image.asset(
                  "assets/images/placeholder.png",
                  height: 150,
                  width: 110,
                  fit: BoxFit.cover,
                )
              : Image.network(
                  movie.image,
                  height: 150,
                  width: 110,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Lottie.asset(
                      "assets/images/loading.json",
                      height: 150,
                      width: 110,
                      repeat: true,
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    print("Error loading image ===>: $error");
                    return Image.asset(
                      "assets/images/placeholder.png",
                      height: 150,
                      width: 110,
                      fit: BoxFit.cover,
                    );
                  },
                ),
        ),
        SizedBox(height: 10),
        Text(
          movie.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.darkBrown,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
