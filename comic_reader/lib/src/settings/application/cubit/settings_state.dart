part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required String defaultListing,
    required bool latestFirst,
  }) = _SettingsState;

  factory SettingsState.initial() => const _SettingsState(
    defaultListing: 'popular',
    latestFirst: true,
  );
}
