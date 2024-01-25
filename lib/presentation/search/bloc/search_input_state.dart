part of 'search_input_bloc.dart';

@freezed
class SearchInputState with _$SearchInputState {
  const factory SearchInputState.initial() = _Initial;
  const factory SearchInputState.loading() = _Loading;
  const factory SearchInputState.success(List<Result> searchResult) = _Success;
  const factory SearchInputState.error(String message) = _Error;
}
