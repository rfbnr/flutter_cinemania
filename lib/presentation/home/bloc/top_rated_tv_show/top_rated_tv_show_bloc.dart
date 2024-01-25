import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/tv_show_remote_datasource.dart';
import '../../../../data/models/tv_show_response_model.dart';

part 'top_rated_tv_show_event.dart';
part 'top_rated_tv_show_state.dart';
part 'top_rated_tv_show_bloc.freezed.dart';

class TopRatedTvShowBloc
    extends Bloc<TopRatedTvShowEvent, TopRatedTvShowState> {
  final TvShowRemoteDatasource _tvShowRemoteDatasource;

  TopRatedTvShowBloc(this._tvShowRemoteDatasource) : super(const _Initial()) {
    on<_FetchTopRatedTvShow>((event, emit) async {
      emit(const _Loading());

      final result = await _tvShowRemoteDatasource.fetchTopRatedTvShow();

      result.fold(
        (l) => emit(const _Error("Failed to fetch Top Rated Tv Show")),
        (r) => emit(_Success(r.results)),
      );
    });
  }
}
