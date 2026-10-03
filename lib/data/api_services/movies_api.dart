import 'package:dio/dio.dart';
import 'package:ghibli/constants.dart/strings.dart';

class MoviesApi {
  late Dio dio;

  MoviesApi() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getMovies() async {
    try {
      Response response = await dio.get('films');
      print("movies api response =======> ${response.data.toString()}");
      return response.data;
    } catch (e) {
      print("movies api error =======> ${e.toString()}");
      return [];
    }
  }
}
