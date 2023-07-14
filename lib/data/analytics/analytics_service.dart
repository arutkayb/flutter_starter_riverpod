abstract class AnalyticsService {
  Future<void> logScreenVisit(String screenName);

  Future<void> logButtonClick(String buttonId);
}
