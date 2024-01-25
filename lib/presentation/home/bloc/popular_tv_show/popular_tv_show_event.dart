part of 'popular_tv_show_bloc.dart';

@freezed
class PopularTvShowEvent with _$PopularTvShowEvent {
  const factory PopularTvShowEvent.started() = _Started;
  const factory PopularTvShowEvent.fetchPopularTvShow() = _FetchPopularTvShow;
}
