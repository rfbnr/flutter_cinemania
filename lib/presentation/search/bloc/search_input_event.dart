part of 'search_input_bloc.dart';

@freezed
class SearchInputEvent with _$SearchInputEvent {
  const factory SearchInputEvent.started() = _Started;
  const factory SearchInputEvent.searchMovie(String inputSearch) = _SearchMovie;
  const factory SearchInputEvent.clearSearch() = _ClearSearch;
}
