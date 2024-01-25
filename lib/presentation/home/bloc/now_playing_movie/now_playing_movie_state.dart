part of 'now_playing_movie_bloc.dart';

@freezed
class NowPlayingMovieState with _$NowPlayingMovieState {
  const factory NowPlayingMovieState.initial() = _Initial;
  const factory NowPlayingMovieState.loading() = _Loading;
  const factory NowPlayingMovieState.success(List<Result> nowPlayingMovie) =
      _Success;
  const factory NowPlayingMovieState.error(String message) = _Error;
}
