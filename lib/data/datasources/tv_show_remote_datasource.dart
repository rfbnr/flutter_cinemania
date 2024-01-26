import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/tv_show_response_model.dart';

class TvShowRemoteDatasource {
  Future<Either<String, TvShowResponseModel>> fetchTopRatedTvShow() async {
    final response = await http.get(Uri.parse(Variables.topRatedTvShowUrl));

    if (response.statusCode == 200) {
      return right(TvShowResponseModel.fromJson(response.body));
    } else {
      return left(response.body);
    }
  }

  Future<Either<String, TvShowResponseModel>> fetchPopularTvShow() async {
    final response = await http.get(Uri.parse(Variables.popularTvShowUrl));

    if (response.statusCode == 200) {
      return right(TvShowResponseModel.fromJson(response.body));
    } else {
      return left(response.body);
    }
  }
}
