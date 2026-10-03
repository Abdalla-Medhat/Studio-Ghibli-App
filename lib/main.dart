import 'package:flutter/material.dart';
import 'package:ghibli/router.dart';

void main() {
  runApp(const Ghibli(appRouter: AppRouter()));
}

class Ghibli extends StatelessWidget {
  final AppRouter appRouter;

  const Ghibli({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ghibli",
      onGenerateRoute: appRouter.generationRout,
    );
  }
}
