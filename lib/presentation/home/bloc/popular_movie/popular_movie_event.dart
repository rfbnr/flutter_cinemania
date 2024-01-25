part of 'popular_movie_bloc.dart';

@freezed
class PopularMovieEvent with _$PopularMovieEvent {
  const factory PopularMovieEvent.started() = _Started;
  const factory PopularMovieEvent.fetchPopularMovie() = _FetchPopularMovie;
}
