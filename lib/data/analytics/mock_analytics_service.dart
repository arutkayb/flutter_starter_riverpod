import 'package:flutter_starter_riverpod/data/analytics/analytics_service.dart';

// ignore_for_file: avoid_print

class MockAnalyticsService implements AnalyticsService {
  @override
  Future<void> logScreenVisit(String screenName) async {
    print('analytics logScreenVisit $screenName');
    return;
  }

  @override
  Future<void> logButtonClick(String screenName, String buttonId) async {
    print('analytics logButtonClick $screenName : $buttonId');
    return;
  }
}
