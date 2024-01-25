part of 'now_playing_movie_bloc.dart';

@freezed
class NowPlayingMovieEvent with _$NowPlayingMovieEvent {
  const factory NowPlayingMovieEvent.started() = _Started;
  const factory NowPlayingMovieEvent.fetchNowPlayingMovie() =
      _FetchNowPlayingMovie;
}
