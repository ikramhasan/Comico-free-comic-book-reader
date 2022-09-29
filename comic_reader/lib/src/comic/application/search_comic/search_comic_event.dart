part of 'search_comic_bloc.dart';

@freezed
class SearchComicEvent with _$SearchComicEvent {
  const factory SearchComicEvent.search(String query) = _Search;
}
