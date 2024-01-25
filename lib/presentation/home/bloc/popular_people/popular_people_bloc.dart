import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/people_remote_datasource.dart';
import '../../../../data/models/popular_people_response_model.dart';

part 'popular_people_event.dart';
part 'popular_people_state.dart';
part 'popular_people_bloc.freezed.dart';

class PopularPeopleBloc extends Bloc<PopularPeopleEvent, PopularPeopleState> {
  final PeopleRemoteDatasource _peopleRemoteDatasource;

  PopularPeopleBloc(this._peopleRemoteDatasource) : super(const _Initial()) {
    on<PopularPeopleEvent>(
      (event, emit) async {
        emit(const _Loading());

        final result = await _peopleRemoteDatasource.fetchPopularPeople();

        result.fold(
          (l) => emit(const _Error("Failed to fetch Popular People")),
          (r) => emit(_Success(r.results)),
        );
      },
    );
  }
}
