import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasources/watchlist_local_datasource.dart';
import '../../../data/models/watchlist_response_model.dart';

part 'watchlist_event.dart';
part 'watchlist_state.dart';
part 'watchlist_bloc.freezed.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  WatchlistBloc() : super(const _Initial()) {
    on<_AddToWatchlist>(
      (event, emit) async {
        emit(const _Loading());

        try {
          final watchlistData = WatchlistResponseModel(
            id: event.resultWatchlist.id,
            originalTitle: event.resultWatchlist.originalTitle,
            overview: event.resultWatchlist.overview,
            posterPath: event.resultWatchlist.posterPath,
            voteAverage: event.resultWatchlist.voteAverage,
            voteCount: event.resultWatchlist.voteAverage,
            isWatchlist: event.resultWatchlist.isWatchlist,
          );

          await WatchlistLocalDatasource.instance.addToWatchlist(watchlistData);

          emit(_Success([watchlistData]));
        } catch (e) {
          emit(const _Error("Gagal menambahkan ke watchlist"));
        }
      },
    );

    on<_GetAllWatchlist>(
      (event, emit) async {
        emit(const _Loading());

        try {
          final watchlistData =
              await WatchlistLocalDatasource.instance.getAllWatchlist();

          emit(_Success(watchlistData));
        } catch (e) {
          emit(const _Error("Gagal mengambil data watchlist"));
        }
      },
    );

    on<_RemoveWatchlistById>(
      (event, emit) async {
        emit(const _Loading());

        try {
          await WatchlistLocalDatasource.instance
              .removeWatchlistById(event.idWatchlist);

          final watchlistData =
              await WatchlistLocalDatasource.instance.getAllWatchlist();

          emit(_Success(watchlistData));
        } catch (e) {
          emit(_Error(
              "Gagal menghapus watchlist dengan id: ${event.idWatchlist}"));
        }
      },
    );

    on<_ClearWatchlist>(
      (event, emit) async {
        emit(const _Loading());

        try {
          await WatchlistLocalDatasource.instance.removeAllWatchlist();

          emit(const _Success([]));
        } catch (e) {
          emit(const _Error("Gagal menghapus semua data watchlist"));
        }
      },
    );
  }
}
