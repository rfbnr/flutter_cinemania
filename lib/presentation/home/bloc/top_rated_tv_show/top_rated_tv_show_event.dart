part of 'top_rated_tv_show_bloc.dart';

@freezed
class TopRatedTvShowEvent with _$TopRatedTvShowEvent {
  const factory TopRatedTvShowEvent.started() = _Started;
  const factory TopRatedTvShowEvent.fetchTopRatedTvShow() =
      _FetchTopRatedTvShow;
}
