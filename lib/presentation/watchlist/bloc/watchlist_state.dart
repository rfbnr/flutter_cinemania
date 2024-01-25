part of 'watchlist_bloc.dart';

@freezed
class WatchlistState with _$WatchlistState {
  const factory WatchlistState.initial() = _Initial;
  const factory WatchlistState.loading() = _Loading;
  const factory WatchlistState.success(
      List<WatchlistResponseModel> resultWatchlist) = _Success;
  const factory WatchlistState.error(String message) = _Error;
}
