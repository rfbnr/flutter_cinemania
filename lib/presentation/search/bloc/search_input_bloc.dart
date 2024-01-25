import 'package:bloc/bloc.dart';
import 'package:cinemania/data/datasources/movie_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/movie_response_model.dart';

part 'search_input_event.dart';
part 'search_input_state.dart';
part 'search_input_bloc.freezed.dart';

class SearchInputBloc extends Bloc<SearchInputEvent, SearchInputState> {
  final MovieRemoteDatasource _searchMovieRemoteDatasource;

  SearchInputBloc(this._searchMovieRemoteDatasource) : super(const _Initial()) {
    on<_SearchMovie>(
      (event, emit) async {
        emit(const _Loading());

        final result =
            await _searchMovieRemoteDatasource.searchMovie(event.inputSearch);

        result.fold(
          (l) => emit(const _Error("Failed to search Movie")),
          (r) => emit(_Success(r.results)),
        );
      },
    );

    on<_ClearSearch>(
      (event, emit) {
        emit(const _Initial());
      },
    );
  }
}
