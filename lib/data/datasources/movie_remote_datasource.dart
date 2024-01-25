import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/vaiables.dart';
import '../models/movie_response_model.dart';

class MovieRemoteDatasource {
  Future<Either<String, MovieResponseModel>> fetchPopularMovie() async {
    final response = await http.get(Uri.parse(Variables.popularMovieUrl));

    if (response.statusCode == 200) {
      return right(MovieResponseModel.fromJson(response.body));
    } else {
      return left(response.body);
    }
  }

  Future<Either<String, MovieResponseModel>> fetchNowPlayingMovie() async {
    final response = await http.get(Uri.parse(Variables.nowPlayingMovieUrl));

    if (response.statusCode == 200) {
      return right(MovieResponseModel.fromJson(response.body));
    } else {
      return left(response.body);
    }
  }

  Future<Either<String, MovieResponseModel>> searchMovie(
      String inputSearch) async {
    final response = await http.get(Uri.parse(
        "${Variables.searchMovie}?query=$inputSearch&api_key=${Variables.apiKey}"));

    if (response.statusCode == 200) {
      return right(MovieResponseModel.fromJson(response.body));
    } else {
      return left(response.body);
    }
  }
}
