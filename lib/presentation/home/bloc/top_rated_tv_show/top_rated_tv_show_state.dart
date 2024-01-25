part of 'top_rated_tv_show_bloc.dart';

@freezed
class TopRatedTvShowState with _$TopRatedTvShowState {
  const factory TopRatedTvShowState.initial() = _Initial;
  const factory TopRatedTvShowState.loading() = _Loading;
  const factory TopRatedTvShowState.success(List<Result> topRatedTvShow) =
      _Success;
  const factory TopRatedTvShowState.error(String message) = _Error;
}
