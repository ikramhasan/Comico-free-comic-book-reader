import 'package:bloc/bloc.dart';
import 'package:comic_reader/src/settings/domain/i_settings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this.repository) : super(SettingsState.initial());

  final ISettingsRepository repository;

  void loadDefaultListing() {
    _loadDefaultListing();
  }

  Future<void> setDefaultListing(String? listing) async {
    if (listing != null) {
      await repository.setDefaultListing(listing);
      _loadDefaultListing();
    }
  }

  void _loadDefaultListing() {
    final listing = repository.getDefaultListing();
    if (listing.isNotEmpty) {
      emit(state.copyWith(defaultListing: listing));
    }
  }

  void loadDefaultIssueSort() {
    _loadDefaultIssueSort();
  }

  Future<void> setDefaultIssueSort(bool? latestFirst) async {
    if (latestFirst != null) {
      await repository.setDefaultIssueSort(latestFirst);
      _loadDefaultIssueSort();
    }
  }

  void _loadDefaultIssueSort() {
    final latestFirst = repository.getDefaultIssueSort();
    print(latestFirst);
    emit(state.copyWith(latestFirst: latestFirst));
  }
}
