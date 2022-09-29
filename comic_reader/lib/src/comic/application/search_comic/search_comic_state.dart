part of 'search_comic_bloc.dart';

@freezed
class SearchComicState with _$SearchComicState {
  const factory SearchComicState({
    required bool loading,
    required List<Comic> comics,
    required Failure failure,
    required String query,
  }) = _SearchComicState;

  factory SearchComicState.initial() => SearchComicState(
        loading: false,
        comics: [],
        failure: Failure.none(),
        query: '',
      );
}
