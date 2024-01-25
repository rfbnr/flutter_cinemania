part of 'popular_tv_show_bloc.dart';

@freezed
class PopularTvShowState with _$PopularTvShowState {
  const factory PopularTvShowState.initial() = _Initial;
  const factory PopularTvShowState.loading() = _Loading;
  const factory PopularTvShowState.success(List<Result> popularTvShow) =
      _Success;
  const factory PopularTvShowState.error(String message) = _Error;
}
