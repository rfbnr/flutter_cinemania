import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/tv_show_remote_datasource.dart';
import '../../../../data/models/tv_show_response_model.dart';

part 'popular_tv_show_event.dart';
part 'popular_tv_show_state.dart';
part 'popular_tv_show_bloc.freezed.dart';

class PopularTvShowBloc extends Bloc<PopularTvShowEvent, PopularTvShowState> {
  final TvShowRemoteDatasource _popularTvShowRemoteDatasource;

  PopularTvShowBloc(this._popularTvShowRemoteDatasource)
      : super(const _Initial()) {
    on<_FetchPopularTvShow>(
      (event, emit) async {
        emit(const _Loading());

        final result =
            await _popularTvShowRemoteDatasource.fetchPopularTvShow();

        result.fold(
          (l) => emit(const _Error("Failed to fetch Popular TV show")),
          (r) => emit(_Success(r.results)),
        );
      },
    );
  }
}
