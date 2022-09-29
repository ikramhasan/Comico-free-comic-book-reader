abstract class ISettingsRepository {
  Future<void> setDefaultListing(String listing);
  String getDefaultListing();
  Future<void> setDefaultIssueSort(bool latestFirst);
  bool getDefaultIssueSort();
}
