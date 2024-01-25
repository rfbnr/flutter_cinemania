part of 'popular_people_bloc.dart';

@freezed
class PopularPeopleEvent with _$PopularPeopleEvent {
  const factory PopularPeopleEvent.started() = _Started;
  const factory PopularPeopleEvent.fetchPopularPeople() = _FetchPopularPeople;
}
