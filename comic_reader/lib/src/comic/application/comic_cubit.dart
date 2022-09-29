import 'package:bloc/bloc.dart';
import 'package:comic_reader/src/comic/domain/failure.dart';
import 'package:comic_repository/comic_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_state.dart';
part 'comic_cubit.freezed.dart';

class ComicCubit extends Cubit<ComicState> {
  ComicCubit(this.repository) : super(ComicState.initial());
  final IComicRepository repository;

  Future<void> fetchLatestComics() async {
    emit(state.copyWith(comicsLoading: true));
    try {
      final latestComics = await repository.fetchLatestComics();
      emit(state.copyWith(comics: latestComics));
    } on ComicFailure catch (e) {
      emit(
        state.copyWith(
          comicsFailure: Failure.fromComicFailure(e),
        ),
      );
    }
    emit(state.copyWith(comicsLoading: false));
  }

  Future<void> fetchPopularComics() async {
    emit(state.copyWith(comicsLoading: true));
    try {
      final popularComics = await repository.fetchPopularComics();
      emit(state.copyWith(comics: popularComics));
    } on ComicFailure catch (e) {
      emit(
        state.copyWith(
          comicsFailure: Failure.fromComicFailure(e),
        ),
      );
    }
    emit(state.copyWith(comicsLoading: false));
  }

  Future<void> loadComicDetails(Comic comic) async {
    emit(
      state.copyWith(
        comicDetailsLoading: true,
        comicDetails: state.comicDetails.copyWith(summary: ''),
      ),
    );
    try {
      final comicDetails = await repository.fetchComicDetails(comic);
      emit(state.copyWith(comicDetails: comicDetails));
    } on ComicFailure catch (e) {
      emit(
        state.copyWith(
          comicDetailsFailure: Failure.fromComicFailure(e),
        ),
      );
    }
    emit(state.copyWith(comicDetailsLoading: false));
  }

  Future<void> loadIssues(GenericInfo issue) async {
    emit(state.copyWith(issueLoading: true));
    try {
      final issueResponse = await repository.fetchIssue(issue);
      emit(state.copyWith(issue: issueResponse));
    } on ComicFailure catch (e) {
      emit(
        state.copyWith(
          issueFailure: Failure.fromComicFailure(e),
        ),
      );
    }
    emit(state.copyWith(issueLoading: false));
  }
}
