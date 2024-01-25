import 'package:bloc/bloc.dart';
import 'package:cinemania/data/datasources/movie_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/movie_response_model.dart';

part 'now_playing_movie_event.dart';
part 'now_playing_movie_state.dart';
part 'now_playing_movie_bloc.freezed.dart';

class NowPlayingMovieBloc
    extends Bloc<NowPlayingMovieEvent, NowPlayingMovieState> {
  final MovieRemoteDatasource _nowPlayingMovieRemoteDatasource;

  NowPlayingMovieBloc(this._nowPlayingMovieRemoteDatasource)
      : super(const _Initial()) {
    on<_FetchNowPlayingMovie>((event, emit) async {
      emit(const _Loading());

      final result =
          await _nowPlayingMovieRemoteDatasource.fetchNowPlayingMovie();

      result.fold(
        (l) {
          emit(const _Error("Failed to fetch Now Playing Movie"));
        },
        (r) => emit(_Success(r.results)),
      );
    });
  }
}
