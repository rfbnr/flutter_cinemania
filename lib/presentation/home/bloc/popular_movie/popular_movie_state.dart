part of 'popular_movie_bloc.dart';

@freezed
class PopularMovieState with _$PopularMovieState {
  const factory PopularMovieState.initial() = _Initial;
  const factory PopularMovieState.loading() = _Loading;
  const factory PopularMovieState.success(List<Result> popularMovie) = _Success;
  const factory PopularMovieState.error(String message) = _Error;
}
