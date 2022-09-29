import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:comic_reader/src/comic/domain/failure.dart';
import 'package:comic_repository/comic_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'search_comic_event.dart';
part 'search_comic_state.dart';
part 'search_comic_bloc.freezed.dart';

class SearchComicBloc extends Bloc<SearchComicEvent, SearchComicState> {
  final ComicRepository repository;
  SearchComicBloc(this.repository) : super(SearchComicState.initial()) {
    on<_Search>(
      (event, emit) async {
        if (event.query.isNotEmpty) {
          emit(state.copyWith(loading: true));
          try {
            final comics = await repository.search(event.query);
            emit(state.copyWith(comics: comics));
            // print(comics);
          } on ComicFailure catch (e) {
            emit(state.copyWith(failure: Failure.fromComicFailure(e)));
          }
          emit(state.copyWith(loading: false));
        } else {
          emit(
            state.copyWith(
              failure: const Failure(
                code: 'NO_QUERY_SPECIFIED',
                message: 'Please enter a text in the search box',
              ),
            ),
          );
        }
      },
      transformer: debounceRestartable(const Duration(milliseconds: 800)),
    );
  }

  EventTransformer<SearchComicEvent> debounceRestartable<SearchComicEvent>(
    Duration duration,
  ) {
    return (events, mapper) => restartable<SearchComicEvent>()
        .call(events.debounceTime(duration), mapper);
  }
}
