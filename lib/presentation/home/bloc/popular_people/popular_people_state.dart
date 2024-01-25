part of 'popular_people_bloc.dart';

@freezed
class PopularPeopleState with _$PopularPeopleState {
  const factory PopularPeopleState.initial() = _Initial;
  const factory PopularPeopleState.loading() = _Loading;
  const factory PopularPeopleState.success(List<Result> popularPeople) =
      _Success;
  const factory PopularPeopleState.error(String message) = _Error;
}
