part of 'watchlist_bloc.dart';

@freezed
class WatchlistEvent with _$WatchlistEvent {
  const factory WatchlistEvent.started() = _Started;
  const factory WatchlistEvent.getAllWatchlist() = _GetAllWatchlist;
  const factory WatchlistEvent.clearWatchlist() = _ClearWatchlist;
  const factory WatchlistEvent.addToWatchlist(
      WatchlistResponseModel resultWatchlist) = _AddToWatchlist;
}
