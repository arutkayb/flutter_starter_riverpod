import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/data/analytics/analytics_service.dart';

final AutoDisposeProvider<AnalyticsService> mockAnalyticsServiceProvider =
    Provider.autoDispose((ref) => MockAnalyticsService());

class MockAnalyticsService implements AnalyticsService {
  @override
  Future<void> logScreenVisit(String screenName) async {
    // TODO:
    print('analytics logScreenVisit $screenName');
    return;
  }

  @override
  Future<void> logButtonClick(String buttonId) async {
    // TODO:
    print('analytics logButtonClick $buttonId');
    return;
  }
}
