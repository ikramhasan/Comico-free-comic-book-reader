import 'package:comic_reader/src/settings/domain/i_settings_repository.dart';
import 'package:hive/hive.dart';

class SettingsRepository implements ISettingsRepository {
  final _box = Hive.box(settingsBoxKey);

  @override
  String getDefaultListing() {
    try {
      final defaultListing = _box.get(_defaultListingKey) as String?;
      return defaultListing ?? '';
    } catch (e) {
      return '';
    }
  }

  @override
  Future<void> setDefaultListing(String listing) async {
    await _box.put(_defaultListingKey, listing);
  }

  @override
  bool getDefaultIssueSort() {
    try {
      final latestFirst = _box.get(_defaultIssueSortKey) as bool?;
      return latestFirst ?? true;
    } catch (e) {
      return true;
    }
  }

  @override
  Future<void> setDefaultIssueSort(bool latestFirst) async {
    await _box.put(_defaultIssueSortKey, latestFirst);
  }
}

const settingsBoxKey = '__SETTINGS_BOX__';
const _defaultListingKey = '__DEFAULT_LISTING__';
const _defaultIssueSortKey = '__DEFAULT_ISSUE_SORT__';
