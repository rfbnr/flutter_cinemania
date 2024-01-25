import 'package:bloc/bloc.dart';
import 'package:cinemania/data/datasources/movie_remote_datasource.dart';
import 'package:cinemania/data/models/movie_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movie_event.dart';
part 'popular_movie_state.dart';
part 'popular_movie_bloc.freezed.dart';

class PopularMovieBloc extends Bloc<PopularMovieEvent, PopularMovieState> {
  final MovieRemoteDatasource _popularMovieRemoteDatasource;

  PopularMovieBloc(this._popularMovieRemoteDatasource)
      : super(const _Initial()) {
    on<_FetchPopularMovie>((event, emit) async {
      emit(const _Loading());

      final result = await _popularMovieRemoteDatasource.fetchPopularMovie();

      result.fold(
        (l) => emit(const _Error("Failed to fetch Popular Movie")),
        (r) => emit(_Success(r.results)),
      );
    });
  }
}
