import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/popular_people_response_model.dart';

class PeopleRemoteDatasource {
  Future<Either<String, PopularPeopleResponseModel>>
      fetchPopularPeople() async {
    final response = await http.get(Uri.parse(Variables.popularPeopleUrl));

    if (response.statusCode == 200) {
      return right(PopularPeopleResponseModel.fromJson(response.body));
    } else {
      return left(response.body);
    }
  }
}
