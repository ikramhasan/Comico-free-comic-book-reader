part of 'comic_cubit.dart';

@freezed
class ComicState with _$ComicState {
  const factory ComicState({
    required bool comicsLoading,
    required List<Comic> comics,
    required Failure comicsFailure,
    required bool comicDetailsLoading,
    required Comic comicDetails,
    required Failure comicDetailsFailure,
    required bool issueLoading,
    required List<GenericInfo> issue,
    required Failure issueFailure,
  }) = _ComicState;

  factory ComicState.initial() => _ComicState(
        comics: [],
        comicsFailure: Failure.none(),
        comicsLoading: false,
        comicDetailsLoading: false,
        comicDetails: Comic.empty(),
        comicDetailsFailure: Failure.none(),
        issueLoading: false,
        issueFailure: Failure.none(),
        issue: [],
      );
}
