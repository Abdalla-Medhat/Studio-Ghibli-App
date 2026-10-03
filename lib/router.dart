import 'package:flutter/material.dart';
import 'package:ghibli/constants.dart/strings.dart';
import 'package:ghibli/presentation/screens/moviedetails.dart';
import 'package:ghibli/presentation/screens/moviescreen.dart';

class AppRouter {
  const AppRouter();
  Route? generationRout(RouteSettings stettings) {
    switch (stettings.name) {
      case movieScreen:
        return MaterialPageRoute(builder: (_) => const MovieScreen());
      case movieDetailsScreen:
        return MaterialPageRoute(builder: (_) => const MovieDetails());
    }
  }
}
